Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBB82E007EC
	for <yocto@yoctoproject.org>; Sat, 22 Mar 2014 04:01:27 -0700 (PDT)
Received: by mail-ob0-f179.google.com with SMTP id va2so3672172obc.24
	for <yocto@yoctoproject.org>; Sat, 22 Mar 2014 04:01:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=prkPFAAjQLM+6tCziKVr2RKBSSX4dATlrT7ARsCpXb0=;
	b=MJmJI8JeNxPS6b7YmM4ttH1ko1KJYeeaaRIMeiVHgZ09lP5hMPAM1wkPCCu50pQ6Wm
	4bPRa2cTIVQyJynboLEQDgVE2ucPEqw0wmAm+KMYtNmwP+EKOeiLnqKZrS6Hsqy7BBYu
	MibLmmw3i3bND6Rn9KdiqmkzbI6zJVGbUmF8HFyy/khXFcEItkj8Ikcg8sPKGKPcCyRi
	w2TUb7H1b3SrYdqYfU3suZhoFtsFJBwDjvCVJJW6xNLc0t1tuImWbEHEv5Vazwnx0OrP
	dFGLSmvhJD0ZaWKUgNuuhHjVKwUA+E6gC4S859u1zfbIFOqJuriuG5K2i1HNgKkaVdmO
	sjmQ==
X-Gm-Message-State: ALoCoQmAlH02HJbxUS02Srl3Qr+ODDdzR5rqwq0DKHxyC/gcogTLil0TQl8QmTTGSDODh3QsJBZE
X-Received: by 10.60.132.12 with SMTP id oq12mr47483857oeb.42.1395486086459;
	Sat, 22 Mar 2014 04:01:26 -0700 (PDT)
Received: from [192.168.141.83] (69-165-220-158.dsl.teksavvy.com.
	[69.165.220.158])
	by mx.google.com with ESMTPSA id c9sm12718790obq.20.2014.03.22.04.01.25
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 22 Mar 2014 04:01:25 -0700 (PDT)
Message-ID: <532D6D85.7010302@linaro.org>
Date: Sat, 22 Mar 2014 07:01:25 -0400
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: inherit setuptools
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
X-List-Received-Date: Sat, 22 Mar 2014 11:01:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to write a recipe to add a native python application to the
sysroot so it can be used while building an image.

If I build and install the python app "by hand" I get the following
install layout:

.
|-- bin
|   `-- bmaptool
`-- lib
    `-- python2.7
        `-- site-packages
            |-- bmap_tools-3.2-py2.7.egg
            |-- easy-install.pth
            |-- site.py
            `-- site.pyc

When I use my recipe I get:

.
|-- bin
|   `-- bmaptool
`-- lib
    `-- python2.7
        `-- site-packages
            |-- bmap_tools-3.2-py2.7.egg-info
            |   |-- PKG-INFO
            |   |-- SOURCES.txt
            |   |-- dependency_links.txt
            |   `-- top_level.txt
            `-- bmaptools
                |-- BmapCopy.py
                |-- BmapCopy.pyc
                |-- BmapCreate.py
                |-- BmapCreate.pyc
                |-- BmapHelpers.py
                |-- BmapHelpers.pyc
                |-- Filemap.py
                |-- Filemap.pyc
                |-- TransRead.py
                |-- TransRead.pyc
                |-- __init__.py
                `-- __init__.pyc

When my build tries to invoke the bmaptool it fails because:

| Traceback (most recent call last):
|   File
"/SSD/build/fsl/build-wandboard-dual/tmp/sysroots/x86_64-linux/usr/bin/bmaptool",
line 65, in <module>
|     from bmaptools import BmapCreate, BmapCopy, BmapHelpers, TransRead
| ImportError: No module named bmaptools

Should I ignore "setuptools" and write my own install task? Or is there
some quick and easy fix for this?

