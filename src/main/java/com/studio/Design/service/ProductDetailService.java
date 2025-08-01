package com.studio.Design.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.studio.Design.domain.Product;
import com.studio.Design.domain.ProductDetail;
import com.studio.Design.repository.ProductDetailRepository;

import jakarta.transaction.Transactional;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ProductDetailService {

    private ProductDetailRepository productDetailRepository;

    @Transactional
    public void saveListProductDetail(List<ProductDetail> temp) {
        this.productDetailRepository.saveAll(temp);
    }

    @Transactional
    public void deleteProductDetail(Long id) {
        this.productDetailRepository.deleteById(id);
    }

    public ProductDetail getProductDetailBySize(Product product, String size) {
        return this.productDetailRepository.findByProductAndSize(product, size);
    }

    @Transactional
    public void saveProductDetail(ProductDetail productDetail) {
        this.productDetailRepository.save(productDetail);
    }
}
