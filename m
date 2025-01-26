Return-Path: <ypa.takayasu.ito@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20AA0C02181
	for <webhook@archiver.kernel.org>; Sun, 26 Jan 2025 14:49:54 +0000 (UTC)
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
 by mx.groups.io with SMTP id smtpd.web11.30888.1737902985961035628
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Jan 2025 06:49:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WSekMJiJ;
 spf=pass (domain: gmail.com, ip: 209.85.214.196, mailfrom: ypa.takayasu.ito@gmail.com)
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2166022c5caso55259795ad.2;
        Sun, 26 Jan 2025 06:49:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737902985; x=1738507785; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=V4O7hxTkgMUjrWc9ngfyNP+BRGWqAV4oGV29DqaDeQE=;
        b=WSekMJiJ01kbovXibMal1Ub24z+Tx5mWuxcsPtqofPsJiFEMX0e+EgxmIlZG0Eg81E
         cU+SJYaMuwAPu1VyJZ9P/3eRrEghdPpHm1OvVprfIOlHbLIEN/hYNQdaXBYXgpea15My
         MOupKO1nlgLfpdmfiClWfQkBySSPMcJnvSq8ZhaPU13Vy9WpP377HpiqQQgUMlncNRE6
         r1jlLcvfnnXTW1Fmd+eNYLN9RFqgEb+6unepVz1HUsuxV7PXYkhs73PaDGhJYp/y7XeN
         VR/gH0I6A37Eh1pbs5gj+RV3ihfGNxAajBd2mC5/lTqxQ62QJRzM1M33KMcNW9bIRCIr
         TwrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737902985; x=1738507785;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V4O7hxTkgMUjrWc9ngfyNP+BRGWqAV4oGV29DqaDeQE=;
        b=b3AP5vjojbbeoCAzqOYMPIyBcWAxkNNEuSw0dNWfVQqmD+g+244Vlaf/zZ6GLE56ar
         oejkojnHI7ATKJ/3SMCHzEMJb+15gmAQ8UZGtzEYvOmEiXaMOnBSbiQGsRZ0WwqeOeOK
         upx4qPyy+7R6F9uMEM++jQoP801IN1rqtew9xgFuthRrNuCQiSDgH0UIHCgaj4n5F3/o
         GxAhnkAczB46jkmojyjSRiN3Wq1fdKwspu3ecc1bA2+AX4S8XZ96KT5gSjCV7qIj+JFe
         sss4frajcmFelUEv+CUJfKGar+YPZIH1jelJB6fAlTNBCEPSTxKy0AbKumRfnYoczuZZ
         XNLA==
X-Forwarded-Encrypted: i=1; AJvYcCXUaPZQsi1eFCHY0VY7NR9h/+JH32tY5zdYRKCYRO5/6ZKwqf1Etkidp4UQCysE+KbdQ+p+m7uzY4RdxcX8AA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzKABNnP83suzWNCfxpCGYEcPC2YvhB0tI12AI7jh72TT/tUOtQ
	VhKPzXnKnc+HrcMfHJR7x/CpdiEemH4S0buHbiEysWLZ230Bt548r1GItrk8
X-Gm-Gg: ASbGncvv7xPjw6KSk9pHF6Vl2T1WSri0JNzALk8aAjaUt82+XstcyhyLNX0KERq3Lc6
	rOmF08kacIU/it7oJEabk7HajLZR3JDQg2uesm9ItMXqAoH/4IKta2RoJRXo7vkrN34iUFRTZz/
	0IYtu5rejgmWRsat1MUcL8y7XL0buHQ1ZxKWfz1lk1SGGzD9832kbaENrqazgXlcnb0vm2F+mK+
	iMWK3JMNEL+jA9FcjM7MtAHw2vZ1B4u+Be7+3uyC/GHVMkNo2nBAre6rMso2S02gwHZr8ebFIPj
	kWC6fdODJzKWerDJ6O8FNJOSqs1LJgX2HQGCLetzDRZhYaQroGnWGquPS4dmscXlm0gad6s=
X-Google-Smtp-Source: AGHT+IFZQmHOihHLT97RTK807oyIqQBY8qyepSoGMw1CIV1+103UvE20dpoVHLkVlVqwOd00R81H0g==
X-Received: by 2002:a05:6a00:17aa:b0:72d:9cbc:72fa with SMTP id d2e1a72fcca58-72dafa230c5mr52135078b3a.12.1737902984914;
        Sun, 26 Jan 2025 06:49:44 -0800 (PST)
Received: from ?IPV6:2400:2412:6a60:8500:2830:918c:5c7d:23ee? ([2400:2412:6a60:8500:2830:918c:5c7d:23ee])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72f8a6d235bsm5310248b3a.80.2025.01.26.06.49.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jan 2025 06:49:44 -0800 (PST)
Message-ID: <935e7666-7959-4369-92b8-695a48cc1b2f@gmail.com>
Date: Sun, 26 Jan 2025 23:49:42 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.1.2 is Released
To: yocto@lists.yoctoproject.org, chee.yang.lee@intel.com,
 "yocto-announce@lists.yoctoproject.org"
 <yocto-announce@lists.yoctoproject.org>
References: <BL4PR11MB8797B52C6749270ACB717A4EB9E22@BL4PR11MB8797.namprd11.prod.outlook.com>
From: Takayasu Ito <ypa.takayasu.ito@gmail.com>
Content-Language: en-US
In-Reply-To: <BL4PR11MB8797B52C6749270ACB717A4EB9E22@BL4PR11MB8797.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 26 Jan 2025 14:49:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64628

HI Lee,

The Security Fixes gstreamer1.0 fix, based on recipes, is considered to be the fix
for each of the following recipes.

 > gstreamer1.0: Fix CVE-2024-47537 CVE-2024-47538 CVE-2024-47539 CVE-2024-47540 CVE-2024-47541 CVE-2024-47542 CVE-2024-47543
 > CVE-2024-47544 CVE-2024-47545 CVE-2024-47546 CVE-2024-47596 CVE-2024-47597 CVE-2024-47598 CVE-2024-47599 CVE-2024-47600
 > CVE-2024-47601 CVE-2024-47602 CVE-2024-47603 CVE-2024-47606 CVE-2024-47607 CVE-2024-47613 CVE-2024-47615 CVE-2024-47774
 > CVE-2024-47775 CVE-2024-47776 CVE-2024-47777 CVE-2024-47778 CVE-2024-47834 CVE-2024-47835

< gstreamer1.0: fix CVE-2024-47606
< gstreamer1.0-plugins-base: fix CVE-2024-47538 CVE-2024-47541 CVE-2024-47542 CVE-2024-47600 CVE-2024-47607 CVE-2024-47615
< CVE-2024-47835
< gstreamer1.0-plugins-good: fix CVE-2024-47537 CVE-2024-47539 CVE-2024-47540 CVE-2024-47543 CVE-2024-47544 CVE-2024-47545
< CVE-2024-47546 CVE-2024-47596 CVE-2024-47597 CVE-2024-47598 CVE-2024-47599 CVE-2024-47601 CVE-2024-47602 CVE-2024-47603
< CVE-2024-47606 CVE-2024-47613 CVE-2024-47774 CVE-2024-47775 CVE-2024-47776 CVE-2024-47777 CVE-2024-47778 CVE-2024-47834
< gstreamer1.0-rtsp-server: fix CVE-2024-44331

https://gstreamer.freedesktop.org/security/

On 2025/01/25 10:57, Lee Chee Yang via lists.yoctoproject.org wrote:
> Hi
> 
> We are pleased to announce the Yocto Project 5.1.2 Release is now available for download.
> 
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/poky-ff9ca74e170480578fcdb1f7bcd897f0e69e46a5.tar.bz2 <https:// 
> downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/poky-ff9ca74e170480578fcdb1f7bcd897f0e69e46a5.tar.bz2>
> 
> https://mirrors.kernel.org/yocto/yocto/yocto-5.1.2/poky-ff9ca74e170480578fcdb1f7bcd897f0e69e46a5.tar.bz2 <https:// 
> mirrors.kernel.org/yocto/yocto/yocto-5.1.2/poky-ff9ca74e170480578fcdb1f7bcd897f0e69e46a5.tar.bz2>
> 
> A gpg signed version of these release notes is available at:
> 
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/RELEASENOTES <https://downloads.yoctoproject.org/releases/yocto/ 
> yocto-5.1.2/RELEASENOTES>
> 
> Full Test Report:
> 
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/testreport.txt <https://downloads.yoctoproject.org/releases/yocto/ 
> yocto-5.1.2/testreport.txt>
> 
> Thank you for everyone's contributions to this release.
> 
> Chee Yang
> 
> chee.yang.lee@intel.com <mailto:chee.yang.lee@intel.com>
> 
> Yocto Project Build and Release
> 
> 
> --------------------------
> 
> yocto-5.1.2 Release Notes
> 
> --------------------------
> 
> --------------------------
> 
> Repositories/Downloads
> 
> --------------------------
> 
> Repository Name: poky
> 
> Repository Location: https://git.yoctoproject.org/poky
> 
> Branch: styhead
> 
> Tag: yocto-5.1.2
> 
> Git Revision: ff9ca74e170480578fcdb1f7bcd897f0e69e46a5
> 
> Release Artefact: poky-ff9ca74e170480578fcdb1f7bcd897f0e69e46a5
> 
> sha: 3c8d5504ebc988a6427e31d3a9e84e74f16f84b7e9b0884f77be6bd6231b7fef
> 
> Download Locations:
> 
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/poky-ff9ca74e170480578fcdb1f7bcd897f0e69e46a5.tar.bz2
> 
> https://mirrors.kernel.org/yocto/yocto/yocto-5.1.2/poky-ff9ca74e170480578fcdb1f7bcd897f0e69e46a5.tar.bz2
> 
> Repository Name: openembedded-core
> 
> Repository Location: https://git.openembedded.org/openembedded-core
> 
> Branch: styhead
> 
> Tag: yocto-5.1.2
> 
> Git Revision: 62dfe689246d648f9970a5476716e486b1a33765
> 
> Release Artefact: oecore-62dfe689246d648f9970a5476716e486b1a33765
> 
> sha: 8118c0260e673dbf9f3d7cd0a6d8364fc337f3e8ff75f0c449be88d2157e78fb
> 
> Download Locations:
> 
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/oecore-62dfe689246d648f9970a5476716e486b1a33765.tar.bz2
> 
> https://mirrors.kernel.org/yocto/yocto/yocto-5.1.2/oecore-62dfe689246d648f9970a5476716e486b1a33765.tar.bz2
> 
> Repository Name: meta-mingw
> 
> Repository Location: https://git.yoctoproject.org/meta-mingw
> 
> Branch: styhead
> 
> Tag: yocto-5.1.2
> 
> Git Revision: 77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
> 
> Release Artefact: meta-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
> 
> sha: 4c7f8100a3675d9863e51825def3df5b263ffc81cd57bae26eedbc156d771534
> 
> Download Locations:
> 
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/meta-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9.tar.bz2
> 
> https://mirrors.kernel.org/yocto/yocto/yocto-5.1.2/meta-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9.tar.bz2
> 
> Repository Name: bitbake
> 
> Repository Location: https://git.openembedded.org/bitbake
> 
> Branch: 2.10
> 
> Tag: yocto-5.1.2
> 
> Git Revision: 1452e74cc4ddfaadc6537a049877a66cec253c8d
> 
> Release Artefact: bitbake-1452e74cc4ddfaadc6537a049877a66cec253c8d
> 
> sha: 26538d0b8ab907d962623707697bfc6826615239a724b1805e0c3acbd74fdcaa
> 
> Download Locations:
> 
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/bitbake-1452e74cc4ddfaadc6537a049877a66cec253c8d.tar.bz2
> 
> https://mirrors.kernel.org/yocto/yocto/yocto-5.1.2/bitbake-1452e74cc4ddfaadc6537a049877a66cec253c8d.tar.bz2
> 
> Repository Name: yocto-docs
> 
> Repository Location: https://git.yoctoproject.org/yocto-docs
> 
> Branch: styhead
> 
> Tag: yocto-5.1.2
> 
> Git Revision: 8ac3e2eb1dd4149b24af03666813dc6d94df466d
> 
> ---------------
> 
> Contributors
> 
> ---------------
> 
> Alexander Kanavin
> 
> Antonin Godard
> 
> Bruce Ashfield
> 
> Changqing Li
> 
> Deepthi Hemraj
> 
> Guénaël Muller
> 
> Guðni Már Gilbert
> 
> Hitendra Prajapati
> 
> Lee Chee Yang
> 
> Mark Hatle
> 
> Michael Nazzareno Trimarchi
> 
> Michael Opdenacker
> 
> Peter Marko
> 
> Richard Purdie
> 
> Robert Yang
> 
> Ross Burton
> 
> Sid-Ali Teir
> 
> Steve Sakoman
> 
> Sunil Dora
> 
> Trevor Gamblin
> 
> Wang Mingyu
> 
> Xiangyu Chen
> 
> Yash Shinde
> 
> ---------------
> 
> Known Issues
> 
> ---------------
> 
> N/A
> 
> ---------------
> 
> Security Fixes
> 
> ---------------
> 
> binutils: Fix CVE-2024-53589
> 
> curl: Fix CVE-2024-9681
> 
> ghostscript: Fix CVE-2024-46951 CVE-2024-46952 CVE-2024-46953 CVE-2024-46954 CVE-2024-46955 CVE-2024-46956
> 
> gstreamer1.0: Fix CVE-2024-47537 CVE-2024-47538 CVE-2024-47539 CVE-2024-47540 CVE-2024-47541 CVE-2024-47542 CVE-2024-47543 
> CVE-2024-47544 CVE-2024-47545 CVE-2024-47546 CVE-2024-47596 CVE-2024-47597 CVE-2024-47598 CVE-2024-47599 CVE-2024-47600 
> CVE-2024-47601 CVE-2024-47602 CVE-2024-47603 CVE-2024-47606 CVE-2024-47607 CVE-2024-47613 CVE-2024-47615 CVE-2024-47774 
> CVE-2024-47775 CVE-2024-47776 CVE-2024-47777 CVE-2024-47778 CVE-2024-47834 CVE-2024-47835
> 
> libarchive: Fix CVE-2024-48957 CVE-2024-48958
> 
> libexpat: Fix CVE-2024-50602
> 
> libsndfile1: Fix CVE-2024-50612
> 
> linux-yocto/6.6: Fix CVE-2024-27059 CVE-2024-47704 CVE-2024-49863 CVE-2024-49864 CVE-2024-49866 CVE-2024-49867 CVE-2024-49868 
> CVE-2024-49870 CVE-2024-49871 CVE-2024-49874 CVE-2024-49875 CVE-2024-49877 CVE-2024-49878 CVE-2024-49879 CVE-2024-49881 
> CVE-2024-49882 CVE-2024-49883 CVE-2024-49884 CVE-2024-49886 CVE-2024-49889 CVE-2024-49890 CVE-2024-49892 CVE-2024-49894 
> CVE-2024-49895 CVE-2024-49896 CVE-2024-49900 CVE-2024-49901 CVE-2024-49902 CVE-2024-49903 CVE-2024-49905 CVE-2024-49907 
> CVE-2024-49912 CVE-2024-49913 CVE-2024-49924 CVE-2024-49925 CVE-2024-49927 CVE-2024-49929 CVE-2024-49930 CVE-2024-49931 
> CVE-2024-49933 CVE-2024-49935 CVE-2024-49936 CVE-2024-49937 CVE-2024-49938 CVE-2024-49939 CVE-2024-49944 CVE-2024-49946 
> CVE-2024-49947 CVE-2024-49948 CVE-2024-49949 CVE-2024-49950 CVE-2024-49951 CVE-2024-49952 CVE-2024-49953 CVE-2024-49954 
> CVE-2024-49955 CVE-2024-49957 CVE-2024-49958 CVE-2024-49959 CVE-2024-49960 CVE-2024-49961 CVE-2024-49962 CVE-2024-49963 
> CVE-2024-49965 CVE-2024-49966 CVE-2024-49969 CVE-2024-49973 CVE-2024-49975 CVE-2024-49976 CVE-2024-49977 CVE-2024-49978 
> CVE-2024-49980 CVE-2024-49981 CVE-2024-49982 CVE-2024-49983 CVE-2024-49985 CVE-2024-49986 CVE-2024-49987 CVE-2024-49988 
> CVE-2024-49989 CVE-2024-49991 CVE-2024-49992 CVE-2024-49995 CVE-2024-49996 CVE-2024-49997 CVE-2024-50000 CVE-2024-50001 
> CVE-2024-50002 CVE-2024-50003 CVE-2024-50005 CVE-2024-50006 CVE-2024-50007 CVE-2024-50008 CVE-2024-50012 CVE-2024-50013 
> CVE-2024-50015 CVE-2024-50016 CVE-2024-50019 CVE-2024-50022 CVE-2024-50023 CVE-2024-50024 CVE-2024-50026 CVE-2024-50029 
> CVE-2024-50031 CVE-2024-50032 CVE-2024-50033 CVE-2024-50035 CVE-2024-50036 CVE-2024-50038 CVE-2024-50039 CVE-2024-50040 
> CVE-2024-50041 CVE-2024-50044 CVE-2024-50045 CVE-2024-50046 CVE-2024-50047 CVE-2024-50048 CVE-2024-50049 CVE-2024-50055 
> CVE-2024-50057 CVE-2024-50058 CVE-2024-50059 CVE-2024-50060 CVE-2024-50061 CVE-2024-50062 CVE-2024-50063 CVE-2024-50064 
> CVE-2024-50065 CVE-2024-50066 CVE-2024-50069 CVE-2024-50070 CVE-2024-50072 CVE-2024-50073 CVE-2024-50074 CVE-2024-50075 
> CVE-2024-50076 CVE-2024-50077 CVE-2024-50078 CVE-2024-50080 CVE-2024-50082 CVE-2024-50083 CVE-2024-50084 CVE-2024-50085 
> CVE-2024-50086 CVE-2024-50087 CVE-2024-50088 CVE-2024-50093 CVE-2024-50095 CVE-2024-50096 CVE-2024-50098 CVE-2024-50099 
> CVE-2024-50101 CVE-2024-50103 CVE-2024-50108 CVE-2024-50110 CVE-2024-50111 CVE-2024-50112 CVE-2024-50115 CVE-2024-50116 
> CVE-2024-50117 CVE-2024-50120 CVE-2024-50121 CVE-2024-50124 CVE-2024-50125 CVE-2024-50126 CVE-2024-50127 CVE-2024-50128 
> CVE-2024-50130 CVE-2024-50131 CVE-2024-50133 CVE-2024-50134 CVE-2024-50135 CVE-2024-50136 CVE-2024-50139 CVE-2024-50140 
> CVE-2024-50141 CVE-2024-50142 CVE-2024-50143 CVE-2024-50145 CVE-2024-50147 CVE-2024-50148 CVE-2024-50150 CVE-2024-50151 
> CVE-2024-50152 CVE-2024-50153 CVE-2024-50154 CVE-2024-50155 CVE-2024-50156 CVE-2024-50158 CVE-2024-50159 CVE-2024-50160 
> CVE-2024-50162 CVE-2024-50163 CVE-2024-50164 CVE-2024-50166 CVE-2024-50167 CVE-2024-50168 CVE-2024-50169 CVE-2024-50170 
> CVE-2024-50171 CVE-2024-50172 CVE-2024-50175 CVE-2024-50176 CVE-2024-50179 CVE-2024-50180 CVE-2024-50181 CVE-2024-50182 
> CVE-2024-50183 CVE-2024-50184 CVE-2024-50185 CVE-2024-50186 CVE-2024-50187 CVE-2024-50188 CVE-2024-50189 CVE-2024-50191 
> CVE-2024-50192 CVE-2024-50193 CVE-2024-50194 CVE-2024-50195 CVE-2024-50196 CVE-2024-50198 CVE-2024-50201 CVE-2024-50202 
> CVE-2024-50205 CVE-2024-50208 CVE-2024-50209 CVE-2024-50211 CVE-2024-50215 CVE-2024-50222 CVE-2024-50223 CVE-2024-50224 
> CVE-2024-50226 CVE-2024-50229 CVE-2024-50230 CVE-2024-50231 CVE-2024-50232 CVE-2024-50233 CVE-2024-50234 CVE-2024-50235 
> CVE-2024-50236 CVE-2024-50237 CVE-2024-50239 CVE-2024-50240 CVE-2024-50242 CVE-2024-50243 CVE-2024-50244 CVE-2024-50245 
> CVE-2024-50246 CVE-2024-50247 CVE-2024-50248 CVE-2024-50249 CVE-2024-50250 CVE-2024-50251 CVE-2024-50252 CVE-2024-50255 
> CVE-2024-50256 CVE-2024-50257 CVE-2024-50258 CVE-2024-50259 CVE-2024-50261 CVE-2024-50262 CVE-2024-50264 CVE-2024-50265 
> CVE-2024-50267 CVE-2024-50268 CVE-2024-50269 CVE-2024-50271 CVE-2024-50272 CVE-2024-50273 CVE-2024-50275 CVE-2024-50276 
> CVE-2024-50278 CVE-2024-50279 CVE-2024-50282 CVE-2024-50283 CVE-2024-50284 CVE-2024-50285 CVE-2024-50286 CVE-2024-50287 
> CVE-2024-50292 CVE-2024-50296 CVE-2024-50298 CVE-2024-50299 CVE-2024-50300 CVE-2024-50301 CVE-2024-50302 CVE-2024-53042 
> CVE-2024-53043 CVE-2024-53046 CVE-2024-53047 CVE-2024-53052 CVE-2024-53055 CVE-2024-53057 CVE-2024-53058 CVE-2024-53059 
> CVE-2024-53060 CVE-2024-53061 CVE-2024-53063 CVE-2024-53066 CVE-2024-53068 CVE-2024-53072 CVE-2024-53076 CVE-2024-53079 
> CVE-2024-53081 CVE-2024-53082 CVE-2024-53083 CVE-2024-53088 CVE-2024-53091 CVE-2024-53093 CVE-2024-53094 CVE-2024-53096 
> CVE-2024-53099 CVE-2024-53100 CVE-2024-53101 CVE-2024-53103 CVE-2024-53108 CVE-2024-53109 CVE-2024-53110 CVE-2024-53112 
> CVE-2024-53113 CVE-2024-53119 CVE-2024-53120 CVE-2024-53121 CVE-2024-53122 CVE-2024-53123 CVE-2024-53126 CVE-2024-53127 
> CVE-2024-53129 CVE-2024-53130 CVE-2024-53131 CVE-2024-53134 CVE-2024-53135 CVE-2024-53138 CVE-2024-53139 CVE-2024-53140 
> CVE-2024-53141 CVE-2024-53142 CVE-2024-53145 CVE-2024-53146 CVE-2024-53150 CVE-2024-53151 CVE-2024-53154 CVE-2024-53155 
> CVE-2024-53156 CVE-2024-53157 CVE-2024-53165 CVE-2024-53166 CVE-2024-53171 CVE-2024-53173 CVE-2024-53180 CVE-2024-53188 
> CVE-2024-53200 CVE-2024-53202 CVE-2024-53208 CVE-2024-53210 CVE-2024-53213 CVE-2024-53226 CVE-2024-53227 CVE-2024-53230 
> CVE-2024-53231 CVE-2024-53237 CVE-2024-54683 CVE-2024-55916 CVE-2024-56369 CVE-2024-56538 CVE-2024-56551 CVE-2024-56567 
> CVE-2024-56572 CVE-2024-56574 CVE-2024-56577 CVE-2024-56578 CVE-2024-56579 CVE-2024-56581 CVE-2024-56593 CVE-2024-56595 
> CVE-2024-56596 CVE-2024-56598 CVE-2024-56600 CVE-2024-56601 CVE-2024-56602 CVE-2024-56603 CVE-2024-56604 CVE-2024-56605 
> CVE-2024-56606 CVE-2024-56611 CVE-2024-56613 CVE-2024-56614 CVE-2024-56615 CVE-2024-56617 CVE-2024-56622 CVE-2024-56623 
> CVE-2024-56626 CVE-2024-56627 CVE-2024-56629 CVE-2024-56631 CVE-2024-56634 CVE-2024-56640 CVE-2024-56642 CVE-2024-56643 
> CVE-2024-56648 CVE-2024-56649 CVE-2024-56650 CVE-2024-56651 CVE-2024-56653 CVE-2024-56654 CVE-2024-56657 CVE-2024-56658 
> CVE-2024-56659 CVE-2024-56660 CVE-2024-56662 CVE-2024-56663 CVE-2024-56664 CVE-2024-56667 CVE-2024-56670 CVE-2024-56672 
> CVE-2024-56675 CVE-2024-56688 CVE-2024-56689 CVE-2024-56692 CVE-2024-56694 CVE-2024-56704 CVE-2024-56708 CVE-2024-56710 
> CVE-2024-56715 CVE-2024-56716 CVE-2024-56717 CVE-2024-56718 CVE-2024-56720 CVE-2024-56722 CVE-2024-56723 CVE-2024-56724 
> CVE-2024-56725 CVE-2024-56726 CVE-2024-56727 CVE-2024-56728 CVE-2024-56729 CVE-2024-56739 CVE-2024-56741 CVE-2024-56744 
> CVE-2024-56745 CVE-2024-56746 CVE-2024-56747 CVE-2024-56748 CVE-2024-56751 CVE-2024-56752 CVE-2024-56754 CVE-2024-56755 
> CVE-2024-56756 CVE-2024-56760 CVE-2024-56763 CVE-2024-56765 CVE-2024-56767 CVE-2024-56769 CVE-2024-56770 CVE-2024-56774 
> CVE-2024-56776 CVE-2024-56777 CVE-2024-56778 CVE-2024-56779 CVE-2024-56780 CVE-2024-56781 CVE-2024-56783 CVE-2024-56785 
> CVE-2024-56786 CVE-2024-56787 CVE-2024-57807
> 
> qemu: Fix CVE-2024-6505
> 
> rust: Ignore CVE-2024-43402
> 
> ---------------
> 
> Fixes
> 
> ---------------
> 
> binutils: stable 2.43.1 branch update
> 
> bitbake: runqueue: Fix performance of multiconfigs with large overlap
> 
> bitbake: runqueue: Fix scenetask processing performance issue
> 
> bitbake: runqueue: Optimise setscene loop processing
> 
> build-appliance-image: Update to styhead head revision
> 
> builder: set CVE_PRODUCT
> 
> buildtools-docs-tarball: Add rsvg so we can handle svg files in docs
> 
> connman: Fix restart script
> 
> contributor-guide: submit-changes.rst: suggest to remove the git signature
> 
> cve-update-nvd2-native: Handle BB_NO_NETWORK and missing db
> 
> cve-update-nvd2-native: Tweak to work better with NFS DL_DIR
> 
> dev-manual: bmaptool.rst: correct command for bmaptool-native
> 
> dev-manual: bmaptool.rst: simplify and fix instructions
> 
> dev-manual: fix styling of references to bmaptool
> 
> dnf: drop python3-iniparse from DEPENDS and RDEPENDS
> 
> do_package/sstate/sstatesig: Change timestamp clamping to hash output only
> 
> docs: Gather dependencies in poky.yaml.in
> 
> docs: Update the documentation for SRCPV
> 
> docs: standards.md: add a section on admonitions
> 
> docs: update current releases
> 
> expat: upgrade to 2.6.4
> 
> gcc: Fix c++: tweak for Wrange-loop-construct
> 
> ghostscript: upgrade 10.04.0
> 
> glibc: stable 2.40 branch updates.
> 
> groff: Fix race issues for parallel build
> 
> gstreamer1.0-libav: explicitly disable documentation
> 
> gstreamer1.0: run ptests in parallel
> 
> gstreamer1.0: upgrade to 1.24.10
> 
> linux-yocto/6.6: bsp/genericarm64: disable ARM64_SME
> 
> linux-yocto/6.6: genericarm64.cfg: enable CONFIG_DMA_CMA
> 
> linux-yocto/6.6: update to v6.6.69
> 
> lttng-modules: fix sched_stat_runtime changed in Linux 6.6.66
> 
> migration-guides: add release notes for 4.0.23, 5.0.4, 5.0.5 and 5.1.1
> 
> oeqa/ssh: Improve performance and log sizes
> 
> oeqa/utils/gitarchive: Return tag name and improve exclude handling
> 
> poky.conf: add new tested distros
> 
> poky.conf: bump version for 5.1.2
> 
> poky.yaml.in: add missing locales dependency
> 
> poky.yaml.in: replace inkscape dependency by librsvg2-bin
> 
> populate_sdk_ext: write_local_conf add shutil import
> 
> python3-poetry-core: drop python3-six from RDEPENDS
> 
> python3: upgrade to 3.12.8
> 
> ref-manual: SSTATE_MIRRORS/SOURCE_MIRROR_URL: add instructions for mirror authentication
> 
> ref-manual: classes: fix bin_package description
> 
> ref-manual: devtool-reference: add warning note on deploy-target and shared objects
> 
> ref-manual: merge two separate descriptions of RECIPE_UPGRADE_EXTRA_TASKS
> 
> ref-manual: move runtime-testing section to the test-manual
> 
> ref-manual: packages: move ptest section to the test-manual
> 
> ref-manual: qa-checks: remove patch-status-core/patch-status-noncore
> 
> ref-manual: use standardized method accross both ubuntu and debian for locale install
> 
> reproducible-builds.rst: show how to build a single package
> 
> resulttool: Add --logfile-archive option to store mode
> 
> resulttool: Allow store to filter to specific revisions
> 
> resulttool: Clean up repoducible build logs
> 
> resulttool: Fix passthrough of --all files in store mode
> 
> resulttool: Handle ltp rawlogs as well as ptest
> 
> resulttool: Improve repo layout for oeselftest results
> 
> resulttool: Trim the precision of duration information
> 
> resulttool: Use single space indentation in json output
> 
> rxvt-unicode.inc: disable the terminfo installation by setting TIC to :
> 
> selftest/reproducible: Clean up pathnames
> 
> selftest/reproducible: Drop rawlogs
> 
> shadow: use update-alternatives to handle su.1 and nologin.8
> 
> system-requirements.rst: add dependencies for pdf builds
> 
> system-requirements: add fedora 39 to supported distros
> 
> system-requirements: update list of supported distros
> 
> systemd-boot: drop intltool-native from DEPENDS
> 
> systemd: drop intltool-native from DEPENDS
> 
> 
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64625): https://lists.yoctoproject.org/g/yocto/message/64625
> Mute This Topic: https://lists.yoctoproject.org/mt/110802100/7581020
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ypa.takayasu.ito@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

-- 
Takayasu Ito
Yocto Project Ambassador
ypa.takayasu.ito@gmail.com


