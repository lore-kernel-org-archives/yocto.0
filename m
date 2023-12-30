Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36D6DC46CD2
	for <webhook@archiver.kernel.org>; Sat, 30 Dec 2023 05:03:13 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web10.179049.1703912591135641552
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Dec 2023 21:03:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VK3sHipQ;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-5ce0efd60ddso1528710a12.0
        for <yocto@lists.yoctoproject.org>; Fri, 29 Dec 2023 21:03:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703912590; x=1704517390; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6PiepnzD4gDyD1DzcoJyt7ekSIk2GucB65VrpOxwtNU=;
        b=VK3sHipQs2qGhKLLdg+bRlxac50aF3XJU+MZ+BUxDDUEhG/w0a50C0qx0M+XnLp7nj
         9cfhyXHakWqxIEDZWcIMoqGOcFaf8eGjHlY7dbZ4tJob82GcjwiOR3AZUA+/14N5SVnr
         7HhE9HCTiMW+LqfYC7HwxNPBJ2bkGnvqfzKtGTXTOHMRcdmCwEFFuIMPwjX7iDBr0fRo
         BQ3RnUo3XtPmqh+eux5JkymQEqIGhS2hmof5eFmOD2MsBaDyT8Ha34C1jnL4pmjyVuz1
         K2IepovRK8fV0/mGqFlyDjlLNe/J4vjWf17ARqS1XXzhvgdesYSy/5zr9y0w72O1XvZY
         fnEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703912590; x=1704517390;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6PiepnzD4gDyD1DzcoJyt7ekSIk2GucB65VrpOxwtNU=;
        b=Dr96aHL/UomwG5hbFL3w8te3oSSJLlJat/qV6NVo/yn7p2xrHh7RbSfAaEWbaHllE5
         pT0R2/UOtETk+0K8J8x1Krggp/T28dLU8SBGAljv0gztSR6+STHyhmB12eIvw9HNHHAi
         CImOt9qI1p8+wDgjVT4a4AUpzMYhar5hoAIs7Zp8bFU0FtKjkjjh8Wouo9M8MjaznEoH
         EgDAg8/izPEy8ozZfipDBfHjHM/nb4od2++S0EOudvywHORw3/hyy/rBfqgLI1HmLjYw
         2M3muRMC/JIvVYVi7LGoYRdewOBv6RzzsXTcVIV/w32NoZnOsyjWLr8XK9p0hgkMsnkv
         GsfQ==
X-Gm-Message-State: AOJu0YwIFJwKyMai17NPAbEs6/0TeLTT9UkPkN9UsIMQ5wmbriCgjybo
	uJSOqmOTIN0jOK4yWjZ9r16DLIMNWr8=
X-Google-Smtp-Source: AGHT+IFmLbkzj0/zgWuwA4iRVIzZyqvAQNf1xcp1vcxoNYkIAKOF0DYoEkE/39fF19jIQJAPVFs3Sw==
X-Received: by 2002:a05:6a21:819f:b0:196:a4c2:8bc4 with SMTP id pd31-20020a056a21819f00b00196a4c28bc4mr263000pzb.118.1703912590047;
        Fri, 29 Dec 2023 21:03:10 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:56fb:3e3a:cb3d:4a01])
        by smtp.gmail.com with ESMTPSA id s19-20020aa78293000000b006d9a9727a8esm12124536pfm.178.2023.12.29.21.03.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 21:03:09 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 5/7] layerindex: Add actual_branch to forms and views
Date: Fri, 29 Dec 2023 20:57:17 -0800
Message-Id: <083c23476450ea85e7d3f4a4aff4bb619c7b59fb.1703911977.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1703911977.git.tim.orling@konsulko.com>
References: <cover.1703911977.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Dec 2023 05:03:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62056

For layers which do not follow standard branch names (including
the inclusive naming move away from "master" to "main") we have
the actual_branch field set in a LayerBranch object. Previously
this was only exposed via the admin interface.

Allow layer maintainers (including upon submitting a new layer)
to set the 'Actual branch' in the web UI.

Add a check to make sure the actual_branch is a valid branch
name using 'git check-ref-format --branch <actual_branch>'
since we are not using full refs.

[YOCTO #8008]

NOTE:
  Only existing LayerBranches will be editable. A new layer
  can be submitted with a different branch for "master", but
  only the "master" LayerBranch will be created.

  Further changes to the update.py script will be needed to
  make creation of new stable branches with an actual_branch
  possible.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/forms.py | 15 +++++++++++++++
 layerindex/views.py |  5 +++++
 2 files changed, 20 insertions(+)

diff --git a/layerindex/forms.py b/layerindex/forms.py
index 9615859..3b764f1 100644
--- a/layerindex/forms.py
+++ b/layerindex/forms.py
@@ -76,6 +76,7 @@ LayerMaintainerFormSet = inlineformset_factory(LayerBranch, LayerMaintainer, for
 class EditLayerForm(StyledModelForm):
     # Additional form fields
     vcs_subdir = forms.CharField(label='Repository subdirectory', max_length=40, required=False, help_text='Subdirectory within the repository where the layer is located, if not in the root (usually only used if the repository contains more than one layer)')
+    actual_branch = forms.CharField(label='Actual branch', max_length=80, required=False, help_text='Name of the actual branch in the repository matching the core branch (e.g. the development branch is "master" by default)')
     deps = forms.ModelMultipleChoiceField(label='Other layers this layer depends upon', queryset=LayerItem.objects.filter(comparison=False), required=False)
     captcha = CaptchaField(label='Verification', help_text='Please enter the letters displayed for verification purposes', error_messages={'invalid':'Incorrect entry, please try again'})
 
@@ -98,11 +99,16 @@ class EditLayerForm(StyledModelForm):
         field_order.pop(field_order.index('vcs_subdir'))
         name_pos = field_order.index('vcs_url') + 1
         field_order.insert(name_pos, 'vcs_subdir')
+        # Ensure actual branch appears after repo subdir
+        field_order.pop(field_order.index('actual_branch'))
+        name_pos = name_pos + 1
+        field_order.insert(name_pos, 'actual_branch')
         new_fields = OrderedDict()
         for field in field_order:
             new_fields[field] = self.fields[field]
         self.fields = new_fields
         self.fields['vcs_subdir'].initial = layerbranch.vcs_subdir
+        self.fields['actual_branch'].initial = layerbranch.actual_branch
         self.was_saved = False
         self.allow_base_type = allow_base_type
 
@@ -178,6 +184,15 @@ class EditLayerForm(StyledModelForm):
             val(usage)
         return usage
 
+    def clean_actual_branch(self):
+        import subprocess
+        actual_branch = self.cleaned_data['actual_branch'].strip()
+        process = subprocess.Popen(["git", "check-ref-format", "--branch", actual_branch])
+        exit_status = process.wait()
+        if exit_status != 0:
+            raise forms.ValidationError("Actual branch should be a valid git branch short name")
+        return actual_branch
+
 
 class EditNoteForm(StyledModelForm):
     class Meta:
diff --git a/layerindex/views.py b/layerindex/views.py
index 2e87181..1a29dde 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -162,6 +162,11 @@ def edit_layer_view(request, template_name, branch='master', slug=None):
                     layerbranch.vcs_subdir = new_subdir
                     reset_last_rev = True
                 layerbranch.save()
+                new_actual_branch = form.cleaned_data['actual_branch']
+                if layerbranch.actual_branch != new_actual_branch:
+                    layerbranch.actual_branch = new_actual_branch
+                    reset_last_rev = True
+                layerbranch.save()
                 maintainerformset.save()
                 if slug:
                     new_deps = form.cleaned_data['deps']
-- 
2.34.1


