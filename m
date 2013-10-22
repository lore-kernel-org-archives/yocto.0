Return-Path: <amittomer25@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 096AFE0172C
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 02:05:53 -0700 (PDT)
Received: by mail-wi0-f182.google.com with SMTP id ez12so5291044wid.15
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 02:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=TgVYbgZwb3kMJHlhFsMs1ym2N3gIMe/3yLhKaZbxlns=;
	b=pjU8I7ifAxu4pvMhCMOv1kiv2fn5ANIQ0I1WH1YW0ro2sV6C/b7IYz+TBBejXZLvmB
	ihX5oGThammKSf0ds7QXA9S9Gj7PO0XBDW/mk1X+B+jGvZzPCRS0vKRys3hYuK+SNvFF
	hE+uVfm0InYQSrgzww2KpJCkThHbL5jB0gGDCvJm7rbKjMrHOh2MdkuOXwr1+UzYU4eo
	zhy9Dk0m9q0V8f8uSJpuRVLOajjlo/WU1+YfRFNDAGRzaEoJxHnheDbkicz/YLxEMwPy
	Zj/n6UfwwE0+vg9KaAyEylvS/HuklIjU3yGt7lNCgJ0HiB5mYwEPniExCQebARzXLJNV
	EMnQ==
MIME-Version: 1.0
X-Received: by 10.194.82.229 with SMTP id l5mr245360wjy.85.1382432752874; Tue,
	22 Oct 2013 02:05:52 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Tue, 22 Oct 2013 02:05:52 -0700 (PDT)
In-Reply-To: <7055398.MVNfTLEc1P@fedora-fisso>
References: <CABHD4K_df0qEL0Lqw=Z6Gi=YwMe1RNv5-Tk8cyBM5y98K67SJA@mail.gmail.com>
	<2835025.0QrQ9WxvF6@fedora-fisso>
	<CABHD4K-YkxdoaOTGFRRrHEWQqEqHD=R_58uO_J8mXK4eRQZD1g@mail.gmail.com>
	<7055398.MVNfTLEc1P@fedora-fisso>
Date: Tue, 22 Oct 2013 14:35:52 +0530
Message-ID: <CABHD4K920C+ZX-tSzT0uN_9eB_pYb82NSfmWM=AWjsM60zdEag@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: Davide Soldan <davide.soldan@kynetics.it>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How Do I add users in /etc/passwd in Yocto
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
X-List-Received-Date: Tue, 22 Oct 2013 09:05:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Fine Davide

So  my requiremnet is this .

From from original /etc/passwd file

root:x:0:0:root:/home/root:/bin/sh
proxy:x:13:13:proxy:/bin:/bin/sh
www-data:x:33:33:www-data:/var/www:/bin/sh

Have to do this

root:x:0:0:root:/home/root:/bin/false
proxy:x:13:13:proxy:/bin:/bin/false
www-data:x:33:33:www-data:/var/www:/bin/false



Now for this would below work??

SUMMARY =3D "Example recipe for using inherit useradd"
DESCRIPTION =3D "This recipe serves as an example for using features
from useradd.bbclass"
SECTION =3D "examples"
PR =3D "r1"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D
"file://${COREBASE}/LICENSE;md5=3D3f40d7994397109285ec7b81fdeb3b58 \

file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420"

SRC_URI =3D "file://passwd"

USERADD_PARAM_${PN} =3D "-u 1200 -d /home/root -r -s /bin/false root"

And How do I force this recipe to be picked while bitbake my image??

Thanks
Amit

On Tue, Oct 22, 2013 at 2:22 PM, Davide Soldan
<davide.soldan@kynetics.it> wrote:
> In data marted=EC 22 ottobre 2013 14:18:55, Amit Tomer ha scritto:
>> Thanks Davide
>> Can you please point to right link.
>>
> I found the example recipe there:
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes=
-skeleton/useradd/useradd-example.bb
>
>> On Tue, Oct 22, 2013 at 2:12 PM, Davide Soldan
>> <davide.soldan@kynetics.it> wrote:
>> > In data marted=EC 22 ottobre 2013 14:00:22, Amit Tomer ha scritto:
>> >> For some requirement I wante to add some new users in /etc/passwd .
>> >>
>> >> I tried doing it in couple of way but none of it worked out well
>> >>
>> >> I tried to patcth the /etc/passwd file but getting few errors while
>> >> bitbaking my image.
>> >>
>> >> Paul Eggleton suggests me that patching /etc/passwd  file won't work
>> >>
>> >> Then I tried doing it in below way
>> >>
>> >> SRC_URI +=3D "file://passwd"
>> >>
>> >> do_install_append() {
>> >> install -d ${D}${sysconfdir}/base-passwd ${D}${sysconfdir}
>> >> passwd/passwd${STAGING_DIR_TARGET}${sysconfdir}/passwd
>> >>
>> >>                     install -m 0644 ${WORKDIR}/passwd ${D}${sysconfdi=
r}/passwd
>> >> }
>> >>
>> >>  With above method I am able to add new user to /etc/passwd file
>> >>
>> >> but testing this image gives me trouble and now when I login to board
>> >> it is asking password.
>> >>
>> >> Now would like to know what are the ways to add new users in
>> >> /etc/passwd file in yocto.
>> >>
>> >> Thanks
>> >> Amit
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >
>> > I've done it creating my useradd recipe following
>> > poky/meta-skeleton/recipes-skeleton/useradd/useradd-example.bb
>

