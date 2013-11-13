Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B99AE0182A
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 02:12:58 -0800 (PST)
Received: by mail-vb0-f51.google.com with SMTP id w5so120093vbf.24
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 02:12:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=bf4J0D6c6GtLrVHxmFZyI+5E2QJQ9fnDghyylva0YO8=;
	b=Y9R0WZ64CKz+oZ/12B1vAvkhBCbd6wjWAEWtDjzSRtXN5nTm99BFx5X6VNGSY0mzQy
	FbUBs3uZfvMk18akwME3PfeMSyQsdSwxxIzqlPv/NoRcTMGGVrl4EigxOTm7DprAdjxG
	JqQKDNOtZmYe1j4g3LW4wqJhAd/vCBYqEeYOOjpmdOvdEKJ3CEYSUoCiSh1NT6wWZDwj
	rqDk5xhf8PIOQfNeuBA/qbEKz+1fulJ+kTHbV3oocdFg9oLrqx4LgSrhFJN8QM5rz8zK
	cuRx0u3RuUHCpohYqKDcbHzMakyyQYLnboaRE0No1VrfO2uNMJraXX0idww8zw0Ue99o
	qxdg==
X-Gm-Message-State: ALoCoQnTWS07/9RZZjs3Qq+AjEAkBzkDzy9dm64EVHQ1Oez4a9YTom2+PuXJoNma9Hv56FVx5UNZ
MIME-Version: 1.0
X-Received: by 10.221.51.5 with SMTP id vg5mr11592vcb.40.1384337578206; Wed,
	13 Nov 2013 02:12:58 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Wed, 13 Nov 2013 02:12:58 -0800 (PST)
Date: Wed, 13 Nov 2013 10:12:58 +0000
Message-ID: <CAPhnLPB2G4LQdOxY6HW=EP1=Htnz+H9L7vpkwB9v+QmFEk90dw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Weekly build available.
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
X-List-Received-Date: Wed, 13 Nov 2013 10:12:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

The most current build of master for 1.6 is now available for testing.

http://autobuilder.yoctoproject.org/pub/nightly/20131113-1

bitbake     e054c1e7c8581f66082fcdfb89769401ca6e78a3
eclipse-poky-juno     7b50b0cee840092b4a575c239ddf11ba50d78327
eclipse-poky-kepler     84c1361ee96b781666a23f068244d4f1252be712
meta-fsl-arm     a51c848e9d1274a71d77f6c3b3404703c4364602
meta-fsl-ppc     768c6ef13546e0f977847bc1fbb5957571fbf724
meta-intel     b74b419f08a040b5170addda5d17026e8c50290f
meta-minnow     57459d0753d3b6e25b3ac431496eafa5e668d6fa
meta-qt3     b73552fb998fd30a01dbee5a172e432a16078222
oecore     616354f13732d13c17434d5b60b166f691c25761
poky     090924e7c74d3cbcef6b287f4ae88968e696856f


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

