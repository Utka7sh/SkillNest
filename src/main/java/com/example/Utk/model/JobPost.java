package com.example.Utk.model;


import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
@Scope("prototype")
@Entity
public class JobPost {

    @Id
    private int postId;
    private String postProfile;
    @Column(name = "post_desc", columnDefinition = "TEXT")
    private String postDesc;
    private Integer reqExperience;
    private List<String> postTechStack;


}
