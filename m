Return-Path: <darren.j.breeze@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A73BE009FA; Fri,  5 Jun 2015 17:50:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (darren.j.breeze[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9EBAE009F0
	for <yocto@yoctoproject.org>; Fri,  5 Jun 2015 17:50:21 -0700 (PDT)
Received: by pdbki1 with SMTP id ki1so63089591pdb.1
	for <yocto@yoctoproject.org>; Fri, 05 Jun 2015 17:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=Atlz9j+GoYy4C40aLD2CrM3UFJ2gR5sMeTX1Ol/OBRk=;
	b=vw0u0Zobqf8sCxE4K8ZSZHa4/uGIp2E1ovR/n0N8o8z7t//1rAyycg9GuetlA+tLe2
	dUhM5xuIHWvH2ijGACOa+HfLKE4kQK4pGVErZecVYsGOIj2Es9736d6PuOyowUVSxjCn
	t9obbtJETogvOSZl5zn9hnidezh3snTNwdGTDI1CL2PSDPQGmIhOEjQZgwjh54/yH7W3
	ZwAWH21ZvTfRGJuKZUZnVSB9qndNeJw6dT/613ma3YDrQTXyJDNfp99C0ImpuR4tfeKV
	JP4epUycweeaae+wvIvKhGmCxe6ZxsNDD4+FVBofGbVE0Sb14WIxU4W7DvMDOynRnwzJ
	aB7w==
X-Received: by 10.70.61.68 with SMTP id n4mr10102565pdr.78.1433551820881;
	Fri, 05 Jun 2015 17:50:20 -0700 (PDT)
Received: from [192.168.192.10] (1-64-6-039.static.netvigator.com. [1.64.6.39])
	by mx.google.com with ESMTPSA id gy3sm946675pbb.42.2015.06.05.17.50.19
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jun 2015 17:50:20 -0700 (PDT)
Message-ID: <557243CA.7000203@gmail.com>
Date: Sat, 06 Jun 2015 08:50:18 +0800
From: Darren Breeze <darren.j.breeze@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Recipe question
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 06 Jun 2015 00:50:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi

First post, I hope this is the correct list..

I am trying to create a simple recipe that takes a tree of a website off 
a local git repository and places it in a directory under /opt in my 
image. It's a small tree of a couple of subdirectories and about 20 files.

the recipe file is :

---------

DESCRIPTION = "Web Remote"
SECTION = "utils"

ALTERNATIVE_${PN} = "web-remote"

PROVIDES = "web-remote"
RPROVIDES_${PN} += "${PN}"

LICENSE = "CLOSED"
LIC_FILES_CHKSUM = ""

SRCREV = "${AUTOREV}"

PV="1.0"
PR = "r0"

SRC_URI = 
"git://192.168.192.46/mygroup/web_remote.git;protocol=http;branch=master;"

S = "${WORKDIR}/git"

do_install() {
         install -d ${D}opt/web_remote
         cp -r ${S}/* ${D}opt/web_remote/.
}

SRC_URI[md5sum] = "???"
SRC_URI[sha256sum] = "???"

----------

but I keep getting this error

"error: Can't install packagegroup-core-boot-1.0-r17@rk3188: no package 
provides web-remote"

Without web-remote included in the build, everything works and I get a 
bootable image, I think I am missing something very obvious but been 
hacking at this too long to see it waving at me from the edge of the forest.

I have set the license to CLOSED, just as I had issues with setting up 
MIT (I will fix this later)

Can someone please point me in the correct direction.

many thanks in advance.

Darren B.















