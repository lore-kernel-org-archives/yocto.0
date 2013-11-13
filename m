Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0C28E0182C
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 03:31:02 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 13 Nov 2013 03:31:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,691,1378882800"; d="scan'208";a="426821981"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga001.fm.intel.com with ESMTP; 13 Nov 2013 03:31:00 -0800
Received: from irsmsx105.ger.corp.intel.com (163.33.3.28) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 13 Nov 2013 11:30:59 +0000
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.89]) by
	IRSMSX105.ger.corp.intel.com ([169.254.7.75]) with mapi id
	14.03.0123.003; Wed, 13 Nov 2013 11:30:58 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, Zhao Yi
	<yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Thread-Topic: Weekly build available.
Thread-Index: AQHO4Fj7wQ4CAmEl9UCyO9k03lDb5Zoi9T2AgAARq8A=
Date: Wed, 13 Nov 2013 11:30:57 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F95085@IRSMSX104.ger.corp.intel.com>
References: <CAPhnLPB2G4LQdOxY6HW=EP1=Htnz+H9L7vpkwB9v+QmFEk90dw@mail.gmail.com>
	<CAPhnLPAS=2o-+x3uEa86rUn10PzjevEQPzaDM-orCxOVB_eYfQ@mail.gmail.com>
In-Reply-To: <CAPhnLPAS=2o-+x3uEa86rUn10PzjevEQPzaDM-orCxOVB_eYfQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 13 Nov 2013 11:31:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Beth,
According to the last PDT, QA will begin testing starting next week's build=
.

Thanks,
--
Alexandru Georgescu


-----Original Message-----
From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]=20
Sent: Wednesday, November 13, 2013 12:28
To: yocto@yoctoproject.org; Georgescu, Alexandru C; Zhao Yi; Otavio Salvado=
r
Subject: Re: Weekly build available.

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

On Wed, Nov 13, 2013 at 10:12 AM, Flanagan, Elizabeth <elizabeth.flanagan@i=
ntel.com> wrote:
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

