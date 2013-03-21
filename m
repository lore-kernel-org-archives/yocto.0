Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D2CAE0148A
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 14:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=4wcTim2ePONs2UclqcYiBfSj4jsQ03F+zyYtXq8s6VM=; 
	b=aM+W94GVv4tMd9c9VyjCaBQicBsfYV5xP5tYTXui31S4J6x4R3vUsvpvAQ7lKmvf8wYDhiEUsrNAG4YQ36f9KfWXN+e53s+xPXvV2cm7M9b1hpHt7/qacsw7NKQUM3gD;
Received: from [109.224.129.17] (port=20242
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1UIn1h-002TFz-UN; Thu, 21 Mar 2013 21:27:58 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <F97C42E2-7C1E-4A51-B446-0EFBFBFC9C05@keylevel.com>
Date: Thu, 21 Mar 2013 21:27:56 +0000
Message-Id: <2ED146D4-EA1E-421E-95E8-3C110900BFC8@keylevel.com>
References: <29BFB1FE-41FC-484E-900A-58A29001E39C@keylevel.com>
	<CAJTo0LYfUK7LuqUCA+SxmBYBnQZDuLAst0GGTz+U3hXV7_=HhQ@mail.gmail.com>
	<F97C42E2-7C1E-4A51-B446-0EFBFBFC9C05@keylevel.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Possible Cedartrail PVR build race
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
X-List-Received-Date: Thu, 21 Mar 2013 21:28:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 21 Mar 2013, at 19:22, Chris Tapp wrote:

> Hi Ross,
>=20
> On 21 Mar 2013, at 09:09, Burton, Ross wrote:
>=20
>> On 21 March 2013 09:01, Chris Tapp <opensource@keylevel.com> wrote:
>>> I think I have a build race condition for a project:
>>>=20
>>> 1) Using the meta-intel/cedartrail BSP;
>>> 2) Building under Danny 8.0;
>>> 3) Custom image;
>>> 4) Custom task;
>>> 5) OpenGLES application which runs under 'X'.
>>>=20
>>> If I do a clean build (i.e. after deleting tmp/ sstate-cache/) then =
my application produces 'fuzz' on the screen - some vertical strips =
visible, but nothing recognisable.
>>>=20
>>> If I then 'cleanall' the image, task and application and rebuild the =
image I get an image with an application that works as expected.
>>>=20
>>> I suspect this is something to do with some warning messages I get =
during the clean build:
>>>=20
>>> WARNING: The recipe is trying to install files into a shared area =
when those files already exist. Those files are:
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/KHR/khrplatform.h
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/GLES/gl.h
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/GLES/egl.h
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/GLES/glext.h
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/GLES/glplatform.h
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/EGL/egl.h
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/EGL/eglplatform.h
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/EGL/eglext.h
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/GLES2/gl2platform.h
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/GLES2/gl2.h
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/GLES2/gl2ext.h
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/lib=
GLESv1_CM.so
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/lib=
GLESv2.so.2
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/lib=
GLESv2.so
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/lib=
GLESv1_CM.so.1
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/lib=
EGL.so.1
>>>  =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/lib=
EGL.so
>>>=20
>>> Is there something I can add to my image/task/application .bb to =
prevent this?
>>=20
>> If you were using master you'd see some more useful output, such as
>> the recipes that are conflicting.  I'm 99% certain that in this case
>> it's pvr-cdt-driver and mesa-dri.  On CDT you really don't want
>> mesa-dri.
>>=20
>> I suspect this is coming through the xserver-xorg package which
>> defaults to enabling GLX, which requires mesa-dri.  Inspecting your
>> dependency tree with depexp should confirm this.  Presumably your =
GLES
>> application is using EGL and not GLX?
>>=20
>> I'm always forgetting the exact syntax here, but try setting
>> PACKAGECONFIG_pn-xserver-xorg =3D "udev" in your local.conf.  This
>> should disable the glx options, and drop the mesa-dri dependency.
>=20
> Thanks, that's helped a bit. depexp was showing:
>=20
> xserver-xorg, libva, mesa-dri, packagegroup-core-x11-xserver.
>=20
> Your setting gets rid of 'xserver-xorg' and I assume 'mesa-dri' will =
go when mesa-dri isn't needed.
>=20
> So, that just leaves libva and the packagegroup.


The packagegroup is a problem:

| error: Failed dependencies:
| 	xserver-xorg-extension-glx is needed by =
packagegroup-core-x11-xserver-1.0-r39.cedartrail
| 	xserver-xorg-extension-dri is needed by =
packagegroup-core-x11-xserver-1.0-r39.cedartrail
| ERROR: Function failed: do_rootfs (see =
/media/SSD-RAID/build-danny-cedartrail/tmp/work/cedartrail-poky-linux/opty=
4gles-image-1.0-r0/temp/log.do_rootfs.10973 for further information)



Chris Tapp

opensource@keylevel.com
www.keylevel.com




