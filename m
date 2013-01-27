Return-Path: <schnitzeltony@googlemail.com>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7502E00743
	for <yocto@yoctoproject.org>; Sun, 27 Jan 2013 06:35:47 -0800 (PST)
Received: by mail-ve0-f172.google.com with SMTP id 15so878697vea.17
	for <yocto@yoctoproject.org>; Sun, 27 Jan 2013 06:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:content-transfer-encoding;
	bh=/TaIVWzHKwRXGeeTtVGglDi/Xvbmo88w2NiiE6MfFMY=;
	b=MU9DXD6ixh5Zn9EDl8dYPXdFpQfksZaAewe0HZ/y7xKDnBr2UleDQU2wix2F1ENhXE
	TNnuT67wRAljDw/EZ0MyQ6ZQ+QDGAnd4HD0oL9gEGX7iS2rSkgoGtKjTNH6evgwfVGxm
	ioWu+M25o15DwiFsTetLcFJu9CruwUr4DK+YPS0bbQ3w1CgJyLcoYH9hiGLJ9ZIgel6T
	LrijGAm0iIF+Vw8bdkSmp2HRmHnO45N+J1APqEj1vbEhVg8a8Yz/XekmgmnoRmKYP0pW
	xku2L5YUU/leB5uEU1HSZ9E/t7O1m+WaUjnP/EFoBQJJiItD1tVGVf6w5VNUR44k9x67
	OG0A==
MIME-Version: 1.0
X-Received: by 10.220.219.73 with SMTP id ht9mr11924226vcb.47.1359297346931;
	Sun, 27 Jan 2013 06:35:46 -0800 (PST)
Received: by 10.52.95.243 with HTTP; Sun, 27 Jan 2013 06:35:46 -0800 (PST)
In-Reply-To: <20130126225837.GA30017@gmail.com>
References: <1359064662-17052-1-git-send-email-schnitzeltony@googlemail.com>
	<1359064662-17052-3-git-send-email-schnitzeltony@googlemail.com>
	<20130126225837.GA30017@gmail.com>
Date: Sun, 27 Jan 2013 15:35:46 +0100
Message-ID: <CALbNGRSwHQs-O8dy-MoB2E26jYLXS0UWLHZYSi-0nZtE9Liisg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/2] xserver-xf86-config: fix do_install
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
X-List-Received-Date: Sun, 27 Jan 2013 14:35:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 26, 2013 at 11:58 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Thu, Jan 24, 2013 at 10:57:42PM +0100, Andreas M=C3=BCller wrote:
>> for some reason wildcards don't work in current head. Error message was:
>>
>> | DEBUG: Executing shell function do_install
>> | install: cannot stat `/home/Superandy/tmp/oe-core-eglibc/work/raspberr=
ypi-angstrom-linux-gnueabi/xserver-xf86-config/0.1-r18/xorg.conf.d/*': No s=
uch file or directory
>>
>
> I can't reproduce your error. For me this works. Maybe was something brok=
en in
> oe-core? Anyway it seems to be fixed now. Would you retest it please
Will do that
>
>> Signed-off-by: Andreas M=C3=BCller <schnitzeltony@googlemail.com>
>> ---
>>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    6 ++++--
>>  1 files changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbapp=
end b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>> index 65931e2..a8b8e8c 100644
>> --- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>> +++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>> @@ -1,12 +1,14 @@
>>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>
>>  # Don't forget to bump PRINC if you update the extra files.
>> -PRINC :=3D "${@int(PRINC) + 5}"
>> +PRINC :=3D "${@int(PRINC) + 6}"
>>
>>  THISDIR :=3D "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>>  FILESPATH =3D. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
>>
>> -SRC_URI_append_raspberrypi =3D " file://xorg.conf.d/* "
>> +SRC_URI_append_raspberrypi =3D " \
>> +     file://xorg.conf.d/10-evdev.conf \
>> +"
>>
> I don't find this lin ebreak necesssary here. And if it was, don't combin=
e
> formating commits with other fixes.
>
Oops this was left over from some testing.

Andreas

