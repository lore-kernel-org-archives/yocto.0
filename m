Return-Path: <halstead@happypunch.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5C7DE013EB
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 05:03:47 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so6233499pbb.35
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 05:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=happypunch.com; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:x-enigmail-version:content-type;
	bh=3S5fDCHO8IfB5YiteYuWipD+FHc2XjzMo1FuBA6pn64=;
	b=MEVdIs5K67nCVw0uSjeuzRCKpqCtXPdCt4WlephednZqxQ+0ITBAaNoyTs97b4Zo0a
	G5f5oqDvT29PxW6BxifO4YS7Uc4hidWQVJDnMM3Ifn+1RozhG9gSAY3H7cpCNPqqH1rc
	zPqzP54y9r0E1HnanFbWEw8bN8IF6TaM1LBeg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:x-enigmail-version:content-type:x-gm-message-state;
	bh=3S5fDCHO8IfB5YiteYuWipD+FHc2XjzMo1FuBA6pn64=;
	b=pJ+q+NxQvhA1MTRSSuxR8OgzYi0DhkOdFiawpszk35E/CYWpFm82b+Fh6VaL7P89BQ
	M1j2ObOnJYzzBzbPRm4IrQvJvRCEUeejetU1Pb/5LO/jwCnGRZKZDip2U5gKeaR/+VxA
	PKbwYoYrr154KvKSSwnFt79tgoceaHPEXVblUyI0Be+L9O8R/Wyz15y94dPfNRGS49I9
	sYPn9LLLc8/hIdWZ15lFwd3bwrZLNJ1bs5KsAFbkSW67PX021dwaA7JVBeRlcsLzhX91
	ypo3EvMrOE5Ghs+Ba+jnx+twldg36/nepiqtVbRDIiLzLEoeSZlXIcVfBN1t7PJeZl0s
	gKFA==
Received: by 10.68.230.68 with SMTP id sw4mr19429265pbc.142.1339761827634;
	Fri, 15 Jun 2012 05:03:47 -0700 (PDT)
Received: from [192.168.1.74] (static-50-43-40-17.bvtn.or.frontiernet.net.
	[50.43.40.17])
	by mx.google.com with ESMTPS id sy3sm13058879pbc.18.2012.06.15.05.03.46
	(version=SSLv3 cipher=OTHER); Fri, 15 Jun 2012 05:03:46 -0700 (PDT)
Sender: Michael Halstead <halstead@happypunch.com>
Message-ID: <4FDB24A9.6060905@yoctoproject.org>
Date: Fri, 15 Jun 2012 05:03:53 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
X-Enigmail-Version: 1.5pre
X-Gm-Message-State: ALoCoQkZBExlLGdWV+rjEJCubVlOGeNZxWkTa4w2bXZ4sS7YFoMOpsIQLXoxMYHKQHX3lurZUAQn
Subject: Bugzilla Reorganization
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Jun 2012 12:03:47 -0000
X-Groupsio-MsgNum: 7235
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms060900060100030307000303"

--------------ms060900060100030307000303
Content-Type: multipart/mixed;
 boundary="------------050700050604010704000009"

--------------050700050604010704000009
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

The reorganization of bugzilla has been refined and the new layout is
available for preview at https://bugzilla.yoctodev.org/. After a quick
review I plan to make this change live on production. Expect a short 5
to 10 minute downtime while the changes go live later today.

I've attached the new layout and mapping file for reference.

--=20
Michael Halstead
Yocto Project / Sys Admin




--------------050700050604010704000009
Content-Type: text/plain; charset=UTF-8;
 name="new_bugzilla_classifications.txt"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="new_bugzilla_classifications.txt"

+--------------------------+---------------------------+-------------------=
--------+--------+
| Classification           | Product                   | Component         =
        | CompID |
+--------------------------+---------------------------+-------------------=
--------+--------+
| Build System & Metadata  | BitBake                   | bitbake           =
        |    107 |
| Build System & Metadata  | Hob                       | hob               =
        |    127 |
| Build System & Metadata  | Hob                       | image creator     =
        |    118 |
| Build System & Metadata  | Layers                    | demoapps          =
        |    116 |
| Build System & Metadata  | Layers                    | dlna              =
        |    122 |
| Build System & Metadata  | Layers                    | layers            =
        |    109 |
| Build System & Metadata  | Layers                    | linaro            =
        |    124 |
| Build System & Metadata  | Meta-yocto                | configuration     =
        |    108 |
| Build System & Metadata  | Meta-yocto                | meta-yocto        =
        |    110 |
| Build System & Metadata  | OE-Core                   | configuration     =
        |    135 |
| Build System & Metadata  | OE-Core                   | connectivity      =
        |    111 |
| Build System & Metadata  | OE-Core                   | core              =
        |    112 |
| Build System & Metadata  | OE-Core                   | devtools / tool ch=
ain     |    113 |
| Build System & Metadata  | OE-Core                   | graphics          =
        |    114 |
| Build System & Metadata  | OE-Core                   | kernel            =
        |    129 |
| Build System & Metadata  | OE-Core                   | multimedia        =
        |    115 |
| Build System & Metadata  | OE-Core                   | virtual machines  =
        |    136 |
| Build System & Metadata  | Web - Hob                 | web-hob           =
        |    137 |
| Documentation            | ADT Docs                  | SDK               =
        |     87 |
| Documentation            | BSP Docs                  | bsp-docs          =
        |    138 |
| Documentation            | Development               | development       =
        |    139 |
| Documentation            | Kernel Development        | kernel-development=
        |    140 |
| Documentation            | Quick Start               | quick-start       =
        |    126 |
| Documentation            | Reference                 | handbook          =
        |     88 |
| Documentation            | Reference                 | PRD               =
        |     85 |
| Infrastructure           | AutoBuilder               | autobuilder       =
        |     78 |
| Infrastructure           | Bugzilla                  | bugzilla          =
        |     91 |
| Infrastructure           | Website                   | website           =
        |     92 |
| Infrastructure           | Wiki                      | wiki              =
        |    141 |
| QA/Testing               | Automated Build Testing   | automated-build-te=
sting   |    142 |
| QA/Testing               | Automated Runtime Testing | automated-runtime-=
testing |    143 |
| QA/Testing               | Manual Testing            | manual-testing    =
        |    144 |
| QA/Testing               | Test Plans/Suite          | test-plans/suite  =
        |     79 |
| Runtime                  | Build Appliance           | build-appliance   =
        |    145 |
| Runtime                  | Installation              | Installation      =
        |     81 |
| Runtime                  | Package Management Issues | package-management=
-issues |    146 |
| Runtime                  | Runtime                   | runtime           =
        |    147 |
| Runtime                  | Security                  | security          =
        |     83 |
| Runtime                  | System Startup            | system-startup    =
        |     82 |
| Yocto Project Components | ADT                       | adt               =
        |    119 |
| Yocto Project Components | ADT                       | kernel analysis   =
        |    120 |
| Yocto Project Components | Anjuta Plugin             | anjuta-plugin     =
        |    100 |
| Yocto Project Components | BSPs                      | bsps-configuration=
        |    105 |
| Yocto Project Components | BSPs                      | bsps-meta-fsl-ppc =
        |    131 |
| Yocto Project Components | BSPs                      | bsps-meta-intel   =
        |    128 |
| Yocto Project Components | BSPs                      | bsps-meta-ti      =
        |    132 |
| Yocto Project Components | BSPs                      | bsps-meta-xilinx  =
        |    123 |
| Yocto Project Components | BSPs                      | bsps-meta-yocto   =
        |    130 |
| Yocto Project Components | BSPs                      | bsps-oe-core      =
        |    133 |
| Yocto Project Components | BSPs                      | bsps-runtime      =
        |    104 |
| Yocto Project Components | BSPs                      | bsps-tools        =
        |    134 |
| Yocto Project Components | Cross-prelink             | cross-prelink     =
        |     93 |
| Yocto Project Components | Cross-prelink             | poky integration  =
        |     94 |
| Yocto Project Components | Eclipse Plugin            | eclipse-plugin    =
        |     99 |
| Yocto Project Components | Kernel                    | kernel-configurati=
on      |    103 |
| Yocto Project Components | Kernel                    | kernel-tooling    =
        |    106 |
| Yocto Project Components | Kernel                    | linux-yocto       =
        |    148 |
| Yocto Project Components | Matchbox                  | matchbox          =
        |    149 |
| Yocto Project Components | Pseudo                    | poky integration  =
        |     98 |
| Yocto Project Components | Pseudo                    | pseudo            =
        |     97 |
| Yocto Project Components | Sato                      | gtk-engine        =
        |     45 |
| Yocto Project Components | Sato                      | Icon              =
        |     43 |
| Yocto Project Components | Sato                      | Matchbox          =
        |     44 |
| Yocto Project Components | Sato                      | sato              =
        |     42 |
| Yocto Project Components | Swabber                   | poky integration  =
        |     96 |
| Yocto Project Components | Swabber                   | swabber           =
        |     95 |
+--------------------------+---------------------------+-------------------=
--------+--------+

--------------050700050604010704000009
Content-Type: text/csv;
 name="new_bugzilla_mappings.csv"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="new_bugzilla_mappings.csv"

New Classification,New Product,New Component,Old Classification,Old Product=
,Old Component,Old CompID
Build System & Metadata,BitBake,bitbake,Poky,Build System,bitbake,107
Build System & Metadata,Hob,hob,Poky,Build System,HOB,127
Build System & Metadata,Hob,image creator,Poky,Build System,image creator,1=
18
Build System & Metadata,Layers,demoapps,Yocto Metadata Layers,Layers,demoap=
ps,116
Build System & Metadata,Layers,dlna,Yocto Metadata Layers,Layers,dlna,122
Build System & Metadata,Layers,layers,Poky,Build System,layers,109
Build System & Metadata,Layers,layers,Yocto Metadata Layers,Layers,extra,12=
1
Build System & Metadata,Layers,layers,Yocto Metadata Layers,Layers,general,=
125
Build System & Metadata,Layers,linaro,Yocto Metadata Layers,Layers,linaro,1=
24
Build System & Metadata,Meta-yocto,configuration,Poky,Build System,configur=
ation,108
Build System & Metadata,Meta-yocto,meta-yocto,Poky,Build System,general,110
Build System & Metadata,OE-Core,configuration,new, , ,=20
Build System & Metadata,OE-Core,connectivity,Yocto Metadata Layers,Meta Rec=
ipes,connectivity,111
Build System & Metadata,OE-Core,core,Yocto Metadata Layers,Meta Recipes,cor=
e,112
Build System & Metadata,OE-Core,core,Yocto Metadata Layers,Meta Recipes,gen=
eral,117
Build System & Metadata,OE-Core,devtools / tool chain,Yocto Metadata Layers=
,Meta Recipes,devtools / tool chain,113
Build System & Metadata,OE-Core,graphics,Yocto Metadata Layers,Meta Recipes=
,graphics,114
Build System & Metadata,OE-Core,kernel,Yocto Metadata Layers,Meta Recipes,k=
ernel,129
Build System & Metadata,OE-Core,multimedia,Yocto Metadata Layers,Meta Recip=
es,multimedia,115
Build System & Metadata,OE-Core,virtual machines,new, , ,=20
Build System & Metadata,Web - Hob,web-hob,new, , ,=20
Documentation,ADT Docs,SDK,Yocto Projects,Documentation,SDK,87
Documentation,BSP Docs,bsp-docs,new, , ,=20
Documentation,Development,development,new, , ,=20
Documentation,Kernel Development,kernel-development,new, , ,=20
Documentation,Quick Start,quick-start,Yocto Projects,Documentation,Other,12=
6
Documentation,Reference,handbook,Yocto Projects,Documentation,Handbook,88
Documentation,Reference,PRD,Yocto Projects,Documentation,PRD,85
Infrastructure,AutoBuilder,autobuilder,Infrastructure,AutoBuilder,General,7=
8
Infrastructure,Bugzilla,bugzilla,Infrastructure,Bugzilla,General,91
Infrastructure,Website,website,Infrastructure,Website,General,92
Infrastructure,Wiki,wiki,new, , ,=20
QA/Testing,Automated Build Testing,automated-build-testing,new, , ,=20
QA/Testing,Automated Runtime Testing,automated-runtime-testing,new, , ,=20
QA/Testing,Manual Testing,manual-testing,new, , ,=20
QA/Testing,Test Plans/Suite,test-plans/suite,Yocto Projects,Yocto Test Suit=
e,General,79
Runtime,Build Appliance,build-appliance,new, , ,=20
Runtime,Installation,installation,Yocto Projects,Runtime Distribution,Insta=
llation,81
Runtime,Package Management Issues,package-management-issues,new, , ,=20
Runtime,Runtime,runtime,new, , ,=20
Runtime,Security,security,Poky,Security,General,83
Runtime,System Startup,system-startup,Yocto Projects,Runtime Distribution,S=
ystem Startup,82
Yocto Project Components,ADT,adt,Poky,ADT,general,119
Yocto Project Components,ADT,kernel analysis,Yocto Projects,SDK Tools,gener=
al,120
Yocto Project Components,Anjuta Plugin,anjuta-plugin,Yocto Projects,Anjuta =
Plugin,general,100
Yocto Project Components,BSPs,bsps-configuration,Yocto Projects,BSPs,genera=
l,105
Yocto Project Components,BSPs,bsps-meta-fsl-ppc,new, , ,=20
Yocto Project Components,BSPs,bsps-meta-intel,Yocto Metadata Layers,Layers,=
intel,128
Yocto Project Components,BSPs,bsps-meta-ti,new, , ,=20
Yocto Project Components,BSPs,bsps-meta-xilinx,Yocto Metadata Layers,Layers=
,xilinx,123
Yocto Project Components,BSPs,bsps-meta-yocto,new, , ,=20
Yocto Project Components,BSPs,bsps-oe-core,new, , ,=20
Yocto Project Components,BSPs,bsps-runtime,Yocto Projects,Kernel,runtime,10=
4
Yocto Project Components,BSPs,bsps-tools,new, , ,=20
Yocto Project Components,Cross-prelink,cross-prelink,Yocto Projects,Cross-p=
relink,general,93
Yocto Project Components,Cross-prelink,poky integration,Yocto Projects,Cros=
s-prelink,poky integration,94
Yocto Project Components,Eclipse Plugin,eclipse-plugin,Yocto Projects,Eclip=
se Plugin,general,99
Yocto Project Components,Kernel,kernel-configuration,Yocto Projects,Kernel,=
configuration,103
Yocto Project Components,Kernel,kernel-tooling,Yocto Projects,Kernel,genera=
l,106
Yocto Project Components,Kernel,kernel-tooling,Yocto Projects,Kernel,build,=
102
Yocto Project Components,Kernel,linux-yocto,new, , ,=20
Yocto Project Components,Matchbox,matchbox,new, , ,=20
Yocto Project Components,Pseudo,poky integration,Yocto Projects,Pseudo,poky=
 integration,98
Yocto Project Components,Pseudo,pseudo,Yocto Projects,Pseudo,general,97
Yocto Project Components,Sato,gtk-engine,Yocto Metadata Layers,Sato,gtk-eng=
ine,45
Yocto Project Components,Sato,icon,Yocto Metadata Layers,Sato,Icon,43
Yocto Project Components,Sato,matchbox,Yocto Metadata Layers,Sato,Matchbox,=
44
Yocto Project Components,Sato,sato,Yocto Metadata Layers,Sato,General,42
Yocto Project Components,Swabber,poky integration,Yocto Projects,Swabber,po=
ky integration,96
Yocto Project Components,Swabber,swabber,Yocto Projects,Swabber,general,95

--------------050700050604010704000009--

--------------ms060900060100030307000303
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIINjDCCBjQw
ggQcoAMCAQICASAwDQYJKoZIhvcNAQEFBQAwfTELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0
Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxKTAn
BgNVBAMTIFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3MTAyNDIxMDI1NVoX
DTE3MTAyNDIxMDI1NVowgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSsw
KQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFy
dENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQTCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAMsohUWcASz7GfKrpTOMKqANy9BV7V0igWdGxA8IU77L3aTxErQ+
fcxtDYZ36Z6GH0YFn7fq5RADteP0AYzrCA+EQTfi8q1+kA3m0nwtwXG94M5sIqsvs7lRP1aycBke
/s5g9hJHryZ2acScnzczjBCAo7X1v5G3yw8MDP2m2RCye0KfgZ4nODerZJVzhAlOD9YejvAXZqHk
sw56HzElVIoYSZ3q4+RJuPXXfIoyby+Y2m1E+YzX5iCZXBx05gk6MKAW1vaw4/v2OOLy6FZH3XHH
tOkzUreG//CsFnB9+uaYSlR65cdGzTsmoIK8WH1ygoXhRBm98SD7Hf/r3FELNvUCAwEAAaOCAa0w
ggGpMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBSuVYNv7DHKufcd
+q9rMfPIHeOsuzAfBgNVHSMEGDAWgBROC+8apEBbpRdphzDKNGhD0EGu8jBmBggrBgEFBQcBAQRa
MFgwJwYIKwYBBQUHMAGGG2h0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9jYTAtBggrBgEFBQcwAoYh
aHR0cDovL3d3dy5zdGFydHNzbC5jb20vc2ZzY2EuY3J0MFsGA1UdHwRUMFIwJ6AloCOGIWh0dHA6
Ly93d3cuc3RhcnRzc2wuY29tL3Nmc2NhLmNybDAnoCWgI4YhaHR0cDovL2NybC5zdGFydHNzbC5j
b20vc2ZzY2EuY3JsMIGABgNVHSAEeTB3MHUGCysGAQQBgbU3AQIBMGYwLgYIKwYBBQUHAgEWImh0
dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYBBQUHAgEWKGh0dHA6Ly93d3cu
c3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwDQYJKoZIhvcNAQEFBQADggIBADqpJw3I07QW
ke9plNBpxUxcffc7nUrIQpJHDci91DFG7fVhHRkMZ1J+BKg5UNUxIFJ2Z9B90Micc/NXcs7kPBRd
n6XGO/vPc87Y6R+cWS9Nc9+fp3Enmsm94OxOwI9wn8qnr/6o3mD4noP9JphwUPTXwHovjavRnhUQ
HLfo/i2NG0XXgTHXS2Xm0kVUozXqpYpAdumMiB/vezj1QHQJDmUdPYMcp+reg9901zkyT3fDW/iv
JVv6pWtkh6Pw2ytZT7mvg7YhX3V50Nv860cV11mocUVcqBLv0gcT+HBDYtbuvexNftwNQKD5193A
7zN4vG7CTYkXxytSjKuXrpEatEiFPxWgb84nVj25SU5q/r1Xhwby6mLhkbaXslkVtwEWT3Van49r
KjlK4XrUKYYWtnfzq6aSak5u0Vpxd1rY79tWhD3EdCvOhNz/QplNa+VkIsrcp7+8ZhP1l1b2U6Ma
xIVteuVMD3X0vziIwr7jxYae9FZjbxlpUemqXjcC0QaFfN7qI0JsQMALL7iGRBg7K0CoOBzECdD3
fuZil5kU/LP9cr1BK31U0Uy651bFnAMMMkqhAChIbn0ei72VnbpSsrrSdF0BAGYQ8vyHae5aCg+H
75dVCV33K6FuxZrf09yTz+Vx/PkdRUYkXmZz/OTfyJXsUOUXrym6KvI2rYpccSk5MIIHUDCCBjig
AwIBAgICIgMwDQYJKoZIhvcNAQEFBQAwgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENv
bSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYD
VQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQTAeFw0x
MjA2MTMwNDU5MjlaFw0xNDA2MTQxNjE4MzBaMIGRMRkwFwYDVQQNExBnMDFwWTYwMWJGM1BrRTY3
MQswCQYDVQQGEwJVUzEPMA0GA1UECBMGT3JlZ29uMRIwEAYDVQQHEwlIaWxsc2Jvcm8xGTAXBgNV
BAMTEE1pY2hhZWwgSGFsc3RlYWQxJzAlBgkqhkiG9w0BCQEWGG1pY2hhZWxAeW9jdG9wcm9qZWN0
Lm9yZzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMFZ+GW0VKdiyuQy3hlOvwcHxcm0
8ZwNGGah4zipYky5wVFZO7p9LjJfyF6rvd24xdkaTluxTMmd9pfq2cOVQ6c3RsPufv1yBUbytk6F
4Wk+qD0qEGjuHh5FfakcLIEsHiSn3nzaQZHaolS/yzx/A3coQS8pQrshZYqAF/ME5OxMyL8KDdtk
xatt1reDPqzvI5rKYdeEbmHsTYgd9WWHvs8MfZFHidZoAXMXU+PcsKCUxEYhgP/h9NKcTApu/Mhd
IPKn11pD+gfDM+ochGu1uxuW/t1tNJyRYDVQSDV+rpliQ7mrimSmyktIKkow02pUk4Xw3OqdYq7/
/HpVOUs5nk8CAwEAAaOCA7MwggOvMAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdJQQWMBQG
CCsGAQUFBwMCBggrBgEFBQcDBDAdBgNVHQ4EFgQUcZFNotb1OfDmPE6GQ6MQIBh7meUwHwYDVR0j
BBgwFoAUrlWDb+wxyrn3HfqvazHzyB3jrLswIwYDVR0RBBwwGoEYbWljaGFlbEB5b2N0b3Byb2pl
Y3Qub3JnMIICIQYDVR0gBIICGDCCAhQwggIQBgsrBgEEAYG1NwECAjCCAf8wLgYIKwYBBQUHAgEW
Imh0dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYBBQUHAgEWKGh0dHA6Ly93
d3cuc3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwgfcGCCsGAQUFBwICMIHqMCcWIFN0YXJ0
Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MAMCAQEagb5UaGlzIGNlcnRpZmljYXRlIHdhcyBp
c3N1ZWQgYWNjb3JkaW5nIHRvIHRoZSBDbGFzcyAyIFZhbGlkYXRpb24gcmVxdWlyZW1lbnRzIG9m
IHRoZSBTdGFydENvbSBDQSBwb2xpY3ksIHJlbGlhbmNlIG9ubHkgZm9yIHRoZSBpbnRlbmRlZCBw
dXJwb3NlIGluIGNvbXBsaWFuY2Ugb2YgdGhlIHJlbHlpbmcgcGFydHkgb2JsaWdhdGlvbnMuMIGc
BggrBgEFBQcCAjCBjzAnFiBTdGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTADAgECGmRM
aWFiaWxpdHkgYW5kIHdhcnJhbnRpZXMgYXJlIGxpbWl0ZWQhIFNlZSBzZWN0aW9uICJMZWdhbCBh
bmQgTGltaXRhdGlvbnMiIG9mIHRoZSBTdGFydENvbSBDQSBwb2xpY3kuMDYGA1UdHwQvMC0wK6Ap
oCeGJWh0dHA6Ly9jcmwuc3RhcnRzc2wuY29tL2NydHUyLWNybC5jcmwwgY4GCCsGAQUFBwEBBIGB
MH8wOQYIKwYBBQUHMAGGLWh0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9zdWIvY2xhc3MyL2NsaWVu
dC9jYTBCBggrBgEFBQcwAoY2aHR0cDovL2FpYS5zdGFydHNzbC5jb20vY2VydHMvc3ViLmNsYXNz
Mi5jbGllbnQuY2EuY3J0MCMGA1UdEgQcMBqGGGh0dHA6Ly93d3cuc3RhcnRzc2wuY29tLzANBgkq
hkiG9w0BAQUFAAOCAQEANR/d6M8GHL/rkx3Kz9ILDxYMcekmFgefaDXNQMicUHiUw5TsIl5af1pS
Y2AvbKlA2/FZnyG8w42FuK6ZQBZJxs4/N10NW8qDmuuFTi6TyJgurj73tx9RogW50miDHMZLoMRe
avB1h8zy99L2lRPZSebpSFkrQdYDHaGRVhYMjEcWNW9cLxhR8BaAEw/KlpERv3hUQpwGMppYOE66
M7KJ3HpeR7DXfa4njL9W2hukTQNsskdWtzejHp5iQ65+5Mv+NXLmYP4uLJcR9AbttgNhwStc0P1b
LxnQkElGeUzATOBq+QsVZ7Fo6sSS7kqrhpfaPibqpj83m/wSgpKVsbZJ3DGCA80wggPJAgEBMIGT
MIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJl
IERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMiBQ
cmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0ECAiIDMAkGBSsOAwIaBQCgggIOMBgGCSqGSIb3
DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEyMDYxNTEyMDM1M1owIwYJKoZIhvcN
AQkEMRYEFM1WWqWtna+v+fSP3wJuRqR9XVM6MF8GCSqGSIb3DQEJDzFSMFAwCwYJYIZIAWUDBAEC
MAoGCCqGSIb3DQMHMA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggq
hkiG9w0DAgIBKDCBpAYJKwYBBAGCNxAEMYGWMIGTMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMN
U3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmlu
ZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMiBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQg
Q0ECAiIDMIGmBgsqhkiG9w0BCRACCzGBlqCBkzCBjDELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0
YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcx
ODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDIgUHJpbWFyeSBJbnRlcm1lZGlhdGUgQ2xpZW50IENB
AgIiAzANBgkqhkiG9w0BAQEFAASCAQB5wXpJEt8DECSu6gGiC1X0Ngc8G4f1uk+ACGx70gh81P5Y
h9i6xhgpornsS/mVRa2SDzKu2ltMQYlA5giiUc4kEJMjAZX4Ey21tJlol2A/hYiEsygJFG5tTpp7
N9yreC+U2ekAoyNE2mfBjxCMJv14MDxgiq+KdmJUp7+/jge/e1aJ4riGIeOYslFdUEk5uhP9ChWq
Vmmwu+glrP1pauH6PCc0lUExrxGCEQsVJI6wiG2T7OWU6JBGCvUBH7iTBbwPeU2mmfUC0jXmT4+i
HTYYWERLAMR2TE5TSsdIs8J6/eVgIF50jQ0KZ+finxkkA7aUV5X5sp+S0L6JC3886EtHAAAAAAAA

--------------ms060900060100030307000303--
