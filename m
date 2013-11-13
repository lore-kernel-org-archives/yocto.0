Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f54.google.com (mail-vb0-f54.google.com
	[209.85.212.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3DD2E0182A
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 02:27:36 -0800 (PST)
Received: by mail-vb0-f54.google.com with SMTP id q4so135383vbe.27
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 02:27:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=kVuL8yhVH0j+0U5FOCNa42ZDk80fPULJmKTX1LzYflk=;
	b=NJlwZbxVDEaLHo8CjT6tZtaSAYmxJb3C79OBXZJYuTRqme4vDQpWVknCXp9GT8hEzm
	F5EjN+6IfEPvGt7ovGanbIsg+i7Hp2wOKAwpQUHpoJz8VQPo0CY8Z5hyDV3CyVYsZaDj
	28eCwObFRi01OdGHJyePsn0t6MqifPcZ2N4yvTiwEVty/mXp51BrXbmYw2DeVpBfWWS3
	oaPbhShgbjiByu1lj8+xhmpfff7LEFVDMXIEbeSofsMBjoxsM/K4AZ4+84gNOSoihZtb
	+cUNjaz8NSVEAXjobPkJlQt6BBHsp3m6fMLoy50nZGq60qbdm2heAsPzZhTtDzMycD2A
	UDow==
X-Gm-Message-State: ALoCoQkz96sd7wcbpfxd1lmXYQN+BYUGi98cFRVp7+nEhWVJUZJ1uibDpDxMprwr51ZRp3pNK8YF
MIME-Version: 1.0
X-Received: by 10.58.54.69 with SMTP id h5mr7422218vep.25.1384338455617; Wed,
	13 Nov 2013 02:27:35 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Wed, 13 Nov 2013 02:27:35 -0800 (PST)
In-Reply-To: <CAPhnLPB2G4LQdOxY6HW=EP1=Htnz+H9L7vpkwB9v+QmFEk90dw@mail.gmail.com>
References: <CAPhnLPB2G4LQdOxY6HW=EP1=Htnz+H9L7vpkwB9v+QmFEk90dw@mail.gmail.com>
Date: Wed, 13 Nov 2013 10:27:35 +0000
Message-ID: <CAPhnLPAS=2o-+x3uEa86rUn10PzjevEQPzaDM-orCxOVB_eYfQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: Weekly build available.
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
X-List-Received-Date: Wed, 13 Nov 2013 10:27:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

Correction:

http://autobuilder.yoctoproject.org/pub/nightly/20131112-2

bitbake     e054c1e7c8581f66082fcdfb89769401ca6e78a3
eclipse-poky-juno     7b50b0cee840092b4a575c239ddf11ba50d78327
eclipse-poky-kepler     84c1361ee96b781666a23f068244d4f1252be712
meta-fsl-arm     a51c848e9d1274a71d77f6c3b3404703c4364602
meta-fsl-ppc     768c6ef13546e0f977847bc1fbb5957571fbf724
meta-intel     b74b419f08a040b5170addda5d17026e8c50290f
meta-minnow     57459d0753d3b6e25b3ac431496eafa5e668d6fa
meta-qt3     b73552fb998fd30a01dbee5a172e432a16078222
oecore     616354f13732d13c17434d5b60b166f691c25761
poky     ea92671d9823e3667d6ced7ac2af20f991da404d

On Wed, Nov 13, 2013 at 10:12 AM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> All,
>
> The most current build of master for 1.6 is now available for testing.
>
> http://autobuilder.yoctoproject.org/pub/nightly/20131113-1
>
> bitbake     e054c1e7c8581f66082fcdfb89769401ca6e78a3
> eclipse-poky-juno     7b50b0cee840092b4a575c239ddf11ba50d78327
> eclipse-poky-kepler     84c1361ee96b781666a23f068244d4f1252be712
> meta-fsl-arm     a51c848e9d1274a71d77f6c3b3404703c4364602
> meta-fsl-ppc     768c6ef13546e0f977847bc1fbb5957571fbf724
> meta-intel     b74b419f08a040b5170addda5d17026e8c50290f
> meta-minnow     57459d0753d3b6e25b3ac431496eafa5e668d6fa
> meta-qt3     b73552fb998fd30a01dbee5a172e432a16078222
> oecore     616354f13732d13c17434d5b60b166f691c25761
> poky     090924e7c74d3cbcef6b287f4ae88968e696856f
>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

