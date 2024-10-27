package com.example.Utk.model;


import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.PrimaryKeyJoinColumn;
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
public class Application {
    @Id
    private int userId;
    private String jobId;
    private String fullName;
    private String phone;
    private String email;
    private String college;
    private int experience;
    private List<String> skills;
    private String resumeFileName;

}
