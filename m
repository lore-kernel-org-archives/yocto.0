Return-Path: <amittomer25@gmail.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB55FE0172B
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 01:48:56 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id cb5so6362477wib.0
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 01:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=hwbfsWv2IiMILqsalG0o25Zvq78GDu1tSPh/Hx9o/F4=;
	b=jGisjy4NlptfeY7ViXxMBAgXz54M/WjXoqa98bZ0KsrIwrzTBtObNeF1q09Cjb768x
	PREtfkD577qP/YpRB/BND6wetnXdmvxG2r+CQqdMaaoOzAVwcdab8WMFCAKxsFsmwlKh
	X/VuefQV9FtONI8fuZda63K1Vxlcwgql1rZ2+hwUtj8/giRY/2q4V/P53ZrruQP60C7R
	HhjGVI8nA75aUSBqEws+LPyWG1Jk9nMmlBGBgADGZ43o+/lZNHT9OW3U2VURtYL9bXMX
	SvNMzSXFJmhfBspnkHPC/PgKteflE/z8Zk4+O1qqfrXLjWH8Of0CHR3386q5yQhvoHIj
	nDlw==
MIME-Version: 1.0
X-Received: by 10.180.90.197 with SMTP id by5mr13232665wib.43.1382431735648;
	Tue, 22 Oct 2013 01:48:55 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Tue, 22 Oct 2013 01:48:55 -0700 (PDT)
In-Reply-To: <2835025.0QrQ9WxvF6@fedora-fisso>
References: <CABHD4K_df0qEL0Lqw=Z6Gi=YwMe1RNv5-Tk8cyBM5y98K67SJA@mail.gmail.com>
	<2835025.0QrQ9WxvF6@fedora-fisso>
Date: Tue, 22 Oct 2013 14:18:55 +0530
Message-ID: <CABHD4K-YkxdoaOTGFRRrHEWQqEqHD=R_58uO_J8mXK4eRQZD1g@mail.gmail.com>
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
X-List-Received-Date: Tue, 22 Oct 2013 08:49:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks Davide
Can you please point to right link.

On Tue, Oct 22, 2013 at 2:12 PM, Davide Soldan
<davide.soldan@kynetics.it> wrote:
> In data marted=EC 22 ottobre 2013 14:00:22, Amit Tomer ha scritto:
>> For some requirement I wante to add some new users in /etc/passwd .
>>
>> I tried doing it in couple of way but none of it worked out well
>>
>> I tried to patcth the /etc/passwd file but getting few errors while
>> bitbaking my image.
>>
>> Paul Eggleton suggests me that patching /etc/passwd  file won't work
>>
>> Then I tried doing it in below way
>>
>> SRC_URI +=3D "file://passwd"
>>
>> do_install_append() {
>> install -d ${D}${sysconfdir}/base-passwd ${D}${sysconfdir}
>> passwd/passwd${STAGING_DIR_TARGET}${sysconfdir}/passwd
>>
>>                     install -m 0644 ${WORKDIR}/passwd ${D}${sysconfdir}/=
passwd
>> }
>>
>>  With above method I am able to add new user to /etc/passwd file
>>
>> but testing this image gives me trouble and now when I login to board
>> it is asking password.
>>
>> Now would like to know what are the ways to add new users in
>> /etc/passwd file in yocto.
>>
>> Thanks
>> Amit
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> I've done it creating my useradd recipe following
> poky/meta-skeleton/recipes-skeleton/useradd/useradd-example.bb

