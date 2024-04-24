-- An SQL script listing all bands with Glam rock as their main style
-- ranked by their longevity
SELECT band_name, 
       YEAR('2022-01-01') - SUBSTRING_INDEX(formed, '-', 1) AS lifespan
FROM metal_bands
ORDER BY lifespan DESC;
