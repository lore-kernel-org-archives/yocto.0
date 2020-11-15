Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.23957.1605467180011795702
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Nov 2020 11:06:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vs7gLPyR;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1D3FD38C0710
	for <yocto@yoctoproject.org>; Sun, 15 Nov 2020 19:06:19 +0000 (UTC)
Received: by mail-pf1-f178.google.com with SMTP id q10so11342446pfn.0
        for <yocto@yoctoproject.org>; Sun, 15 Nov 2020 11:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=3FNPA6x0kdSkkRRk6yWNeKXSSQrUsP/yT9mVogjCSkY=;
        b=Vs7gLPyRyw0X7S7SpdihrifijE7IAikMHdDPZi4qa1T/vcyUvTJAgl/CCATTaWxv4N
         uecd74ZJOzFdVNEy4mtFlCZXsLWPpA5YENj01Ko239g354tSDhaurymsQxH/rO6o/pbE
         T7BCHbTjOTPrbDD9+lZhk78v6HZEa1022dLeukeiMFLGhNc8yRanIuPCzu51c+9jN2mF
         uemz4kANmdD8C2ETmNCyCJTvgtfzkPvyZvSPZ457W+YjF2maE1nEK8IzCpUpQCygcE3r
         /pxwODTvt5m7cwwpNO/OumLd/ZVdsJQJgFQKGh5OiIduq7HtZLK5cz2xtQbmxPgkRqUN
         xTeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=3FNPA6x0kdSkkRRk6yWNeKXSSQrUsP/yT9mVogjCSkY=;
        b=dqqg8606llWC+codFNCi5+9/sHroAM46HmT1HU62rJyCGGrCIGgTwEN1HpJIPAM/xR
         Zt3RSaGQdy3yfxKlBWZMPVmVfRzFmwf1MP/s9Ad0T/KJ2LHfWCaEfRx+LP/P/RoooffZ
         9bmVK5bBDbfuu0iMfIfc8p5eUPMQXzlZYJzfo81+hVp+Mjo2bT8HXmDzSOl3Z+p+JP6D
         3x7fLIN1v1FNMH2RHUpXNcotRmHqdxny/u0r1QZ5bPL1UlUucEFm5jpO4gX21yyTVRGH
         bpRa0sulW8nNCJrv6PfQqLqIB53Wv5+a8xVYbgr9WAvQEGaDBzL7S3UgP2uLwJDsOQhR
         yCIg==
X-Gm-Message-State: AOAM533PP3/0o13/d+dRM4g5C7FWVlKtwldvw+6Cogc6snbK25WC1TrW
	pdxBIfTxVbxCtIdU2gLdWUn6JtqoXXw=
X-Google-Smtp-Source: ABdhPJzqjnwCqM7wFKqpvH2EHidXsrJAG3jkf8HuIgluEcY6E4x3yOHukNnnBRCee/63jFCN63e8cA==
X-Received: by 2002:aa7:870e:0:b029:18b:f46:9ca9 with SMTP id b14-20020aa7870e0000b029018b0f469ca9mr10880125pfo.3.1605467177928;
        Sun, 15 Nov 2020 11:06:17 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:c937:fb7f:b6e0:3eef? ([2601:202:4180:a5c0:c937:fb7f:b6e0:3eef])
        by smtp.gmail.com with ESMTPSA id z206sm16647729pfc.3.2020.11.15.11.06.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 11:06:17 -0800 (PST)
Subject: Re: [yocto] [meta-security][PATCH] scap-security-guide: fix build with Python 3.9
To: Yi Zhao <yi.zhao@windriver.com>, yocto@yoctoproject.org
References: <20201105060458.31974-1-yi.zhao@windriver.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <14e105dc-dc65-1e21-ea90-8ddcae62190e@gmail.com>
Date: Sun, 15 Nov 2020 11:06:16 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201105060458.31974-1-yi.zhao@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 11/4/20 10:04 PM, Yi Zhao wrote:
> The getchildren and getiterator functions are deprecated in Python 3.9.
> Backport 3 patches to fix the build issue.
>
> Fixes:
> File
> "/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/scap-security-guide/0.1.44+gitAUTOINC+5fdfdcb2e9-r0/git/ssg/build_stig.py",
> line 41, in add_references
>     index = rule.getchildren().index(ref)
> AttributeError: 'xml.etree.ElementTree.Element' object has no attribute 'getchildren'
merged.

thanks
>
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  ...ated-instance-of-element.getchildren.patch | 43 ++++++++++++++
>  ...-fix-deprecated-getiterator-function.patch | 58 +++++++++++++++++++
>  ...etchildren-and-getiterator-functions.patch | 57 ++++++++++++++++++
>  .../scap-security-guide_git.bb                |  3 +
>  4 files changed, 161 insertions(+)
>  create mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-fix-deprecated-instance-of-element.getchildren.patch
>  create mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-fix-deprecated-getiterator-function.patch
>  create mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0003-fix-remaining-getchildren-and-getiterator-functions.patch
>
> diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-fix-deprecated-instance-of-element.getchildren.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-fix-deprecated-instance-of-element.getchildren.patch
> new file mode 100644
> index 0000000..01e3dd6
> --- /dev/null
> +++ b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-fix-deprecated-instance-of-element.getchildren.patch
> @@ -0,0 +1,43 @@
> +From e435bf2dc59d652710104a1c59332e410b12bb64 Mon Sep 17 00:00:00 2001
> +From: Vojtech Polasek <vpolasek@redhat.com>
> +Date: Mon, 8 Jun 2020 12:33:48 +0200
> +Subject: [PATCH] fix deprecated instance of element.getchildren
> +
> +Upstream-Status: Backport
> +[https://github.com/ComplianceAsCode/content/commit/e435bf2dc59d652710104a1c59332e410b12bb64]
> +
> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> +---
> + ssg/build_remediations.py | 2 +-
> + ssg/build_stig.py         | 2 +-
> + 2 files changed, 2 insertions(+), 2 deletions(-)
> +
> +diff --git a/ssg/build_remediations.py b/ssg/build_remediations.py
> +index fdde0f268..c18d6bd54 100644
> +--- a/ssg/build_remediations.py
> ++++ b/ssg/build_remediations.py
> +@@ -735,7 +735,7 @@ def expand_xccdf_subs(fix, remediation_type, remediation_functions):
> +         # First concat output form of modified fix text (including text appended
> +         # to all children of the fix)
> +         modfix = [fix.text]
> +-        for child in fix.getchildren():
> ++        for child in list(fix):
> +             if child is not None and child.text is not None:
> +                 modfix.append(child.text)
> +         modfixtext = "".join(modfix)
> +diff --git a/ssg/build_stig.py b/ssg/build_stig.py
> +index 528285f3d..6122981fc 100644
> +--- a/ssg/build_stig.py
> ++++ b/ssg/build_stig.py
> +@@ -38,7 +38,7 @@ def add_references(reference, destination):
> +         for ref in refs:
> +             if (ref.get('href').startswith(stig_refs) and
> +                     ref.text in dictionary):
> +-                index = rule.getchildren().index(ref)
> ++                index = list(rule).index(ref)
> +                 new_ref = ET.Element(
> +                     '{%s}reference' % XCCDF11_NS, {'href': stig_ns})
> +                 new_ref.text = dictionary[ref.text]
> +-- 
> +2.17.1
> +
> diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-fix-deprecated-getiterator-function.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-fix-deprecated-getiterator-function.patch
> new file mode 100644
> index 0000000..84271c4
> --- /dev/null
> +++ b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-fix-deprecated-getiterator-function.patch
> @@ -0,0 +1,58 @@
> +From b0adc1d53780def4a95e310b6d26bb91ee97177e Mon Sep 17 00:00:00 2001
> +From: Vojtech Polasek <vpolasek@redhat.com>
> +Date: Mon, 8 Jun 2020 13:27:41 +0200
> +Subject: [PATCH] fix deprecated getiterator function
> +
> +Upstream-Status: Backport
> +[https://github.com/ComplianceAsCode/content/commit/b0adc1d53780def4a95e310b6d26bb91ee97177e]
> +
> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> +---
> + ssg/build_cpe.py    | 6 +++---
> + ssg/id_translate.py | 2 +-
> + 2 files changed, 4 insertions(+), 4 deletions(-)
> +
> +diff --git a/ssg/build_cpe.py b/ssg/build_cpe.py
> +index 2e5d24a5d..8c046777a 100644
> +--- a/ssg/build_cpe.py
> ++++ b/ssg/build_cpe.py
> +@@ -17,7 +17,7 @@ def extract_subelement(objects, sub_elem_type):
> +     """
> + 
> +     for obj in objects:
> +-        for subelement in obj.getiterator():
> ++        for subelement in obj.iter():
> +             if subelement.get(sub_elem_type):
> +                 sub_element = subelement.get(sub_elem_type)
> +                 return sub_element
> +@@ -44,12 +44,12 @@ def extract_referred_nodes(tree_with_refs, tree_with_ids, attrname):
> +     reflist = []
> +     elementlist = []
> + 
> +-    for element in tree_with_refs.getiterator():
> ++    for element in tree_with_refs.iter():
> +         value = element.get(attrname)
> +         if value is not None:
> +             reflist.append(value)
> + 
> +-    for element in tree_with_ids.getiterator():
> ++    for element in tree_with_ids.iter():
> +         if element.get("id") in reflist:
> +             elementlist.append(element)
> + 
> +diff --git a/ssg/id_translate.py b/ssg/id_translate.py
> +index 72b07be18..ba9225904 100644
> +--- a/ssg/id_translate.py
> ++++ b/ssg/id_translate.py
> +@@ -64,7 +64,7 @@ class IDTranslator(object):
> +         )
> + 
> +     def translate(self, tree, store_defname=False):
> +-        for element in tree.getiterator():
> ++        for element in tree.iter():
> +             idname = element.get("id")
> +             if idname:
> +                 # store the old name if requested (for OVAL definitions)
> +-- 
> +2.17.1
> +
> diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0003-fix-remaining-getchildren-and-getiterator-functions.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0003-fix-remaining-getchildren-and-getiterator-functions.patch
> new file mode 100644
> index 0000000..8162292
> --- /dev/null
> +++ b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0003-fix-remaining-getchildren-and-getiterator-functions.patch
> @@ -0,0 +1,57 @@
> +From a0da16c5eeb9a7414f7f2a37a6b270c8d04b2ddf Mon Sep 17 00:00:00 2001
> +From: Vojtech Polasek <vpolasek@redhat.com>
> +Date: Mon, 8 Jun 2020 14:01:55 +0200
> +Subject: [PATCH] fix remaining getchildren and getiterator functions
> +
> +Upstream-Status: Backport
> +[https://github.com/ComplianceAsCode/content/commit/a0da16c5eeb9a7414f7f2a37a6b270c8d04b2ddf]
> +
> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> +---
> + build-scripts/sds_move_ocil_to_checks.py                  | 2 +-
> + build-scripts/verify_references.py                        | 2 +-
> + shared/transforms/pcidss/transform_benchmark_to_pcidss.py | 2 +-
> + 3 files changed, 3 insertions(+), 3 deletions(-)
> +
> +diff --git a/build-scripts/sds_move_ocil_to_checks.py b/build-scripts/sds_move_ocil_to_checks.py
> +index 5f5139659..64dc19084 100755
> +--- a/build-scripts/sds_move_ocil_to_checks.py
> ++++ b/build-scripts/sds_move_ocil_to_checks.py
> +@@ -106,7 +106,7 @@ def move_ocil_content_from_ds_extended_component_to_ds_component(datastreamtree,
> +     timestamp = extendedcomp.get('timestamp')
> + 
> +     # Get children elements of <ds:extended-component> containing OCIL content
> +-    extchildren = extendedcomp.getchildren()
> ++    extchildren = list(extendedcomp)
> +     # There should be just one OCIL subcomponent in <ds:extended-component>
> +     if len(extchildren) != 1:
> +         sys.stderr.write("ds:extended-component contains more than one element!"
> +diff --git a/build-scripts/verify_references.py b/build-scripts/verify_references.py
> +index 69b3e2d1f..95d387f46 100755
> +--- a/build-scripts/verify_references.py
> ++++ b/build-scripts/verify_references.py
> +@@ -179,7 +179,7 @@ def main():
> +     check_content_refs = xccdftree.findall(".//{%s}check-content-ref"
> +                                            % xccdf_ns)
> + 
> +-    xccdf_parent_map = dict((c, p) for p in xccdftree.getiterator() for c in p)
> ++    xccdf_parent_map = dict((c, p) for p in xccdftree.iter() for c in p)
> +     # now we can actually do the verification work here
> +     if options.rules_with_invalid_checks or options.all_checks:
> +         for check_content_ref in check_content_refs:
> +diff --git a/shared/transforms/pcidss/transform_benchmark_to_pcidss.py b/shared/transforms/pcidss/transform_benchmark_to_pcidss.py
> +index 0ceaf727d..c94b12c45 100755
> +--- a/shared/transforms/pcidss/transform_benchmark_to_pcidss.py
> ++++ b/shared/transforms/pcidss/transform_benchmark_to_pcidss.py
> +@@ -111,7 +111,7 @@ def main():
> +             benchmark.findall(".//{%s}Value" % (XCCDF_NAMESPACE)):
> +         values.append(value)
> + 
> +-    parent_map = dict((c, p) for p in benchmark.getiterator() for c in p)
> ++    parent_map = dict((c, p) for p in benchmark.iter() for c in p)
> +     for rule in \
> +             benchmark.findall(".//{%s}Rule" % (XCCDF_NAMESPACE)):
> +         parent_map[rule].remove(rule)
> +-- 
> +2.17.1
> +
> diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
> index f35d769..6e7180f 100644
> --- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
> +++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
> @@ -4,6 +4,9 @@ SRCREV = "5fdfdcb2e95afbd86ace555beca5d20cbf1043ed"
>  SRC_URI = "git://github.com/akuster/scap-security-guide.git;branch=oe-0.1.44; \
>             file://0001-Fix-XML-parsing-of-the-remediation-functions-file.patch \
>             file://0002-Fixed-the-broken-fix-when-greedy-regex-ate-the-whole.patch \
> +           file://0001-fix-deprecated-instance-of-element.getchildren.patch \
> +           file://0002-fix-deprecated-getiterator-function.patch \
> +           file://0003-fix-remaining-getchildren-and-getiterator-functions.patch \
>            "
>  PV = "0.1.44+git${SRCPV}"
>  
>
> 
>

