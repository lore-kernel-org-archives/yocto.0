Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BF9BE00831; Wed, 11 Apr 2018 06:50:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f179.google.com (mail-ot0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD2EAE006B4
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2018 06:50:07 -0700 (PDT)
Received: by mail-ot0-f179.google.com with SMTP id m22-v6so2032490otf.8
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2018 06:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=OsJWbOESH5u9IgpzfKW5k7NmwCYgWmkFJAFKiheJRDQ=;
	b=eOddPeNcyspTBOkiQn86i/DacPxqzXL7bASPSMbWBS+qjBt+wOgQh8zipDjvJG7ZE4
	Q8q6Xk4jb2zT5Qk/CbFudwbCfrA+QJmGZ1cKSgDiRA7MYRVXch9B/Xhjsdg3r9HaOgBR
	8//tOB4zKoz/VKC06bXdCy1jtfMObOnRvgJ8R130X6vZXdyAzCHu1akeZSIc0Hj9p9ft
	04sslyel24pwCOkPhjnoTip9o2SrqQPV4znR7j6OpnEaq78VqFi++YJdItc19/XIssO5
	zdqcUMvuBSACmARqzvrLYzDHfJm7Ie2LGA3hGDDI7eC/QWF0AVFdwbPxOgfv8M/3SHnj
	vJdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=OsJWbOESH5u9IgpzfKW5k7NmwCYgWmkFJAFKiheJRDQ=;
	b=rZ4xw6+1I0L+Sn6/pUqiWXEeRTl18qopuCGJqvvALel54v9fGv0bt+i5siYtFYy1qo
	cxD5FUka/kvTNTxeqV6pNTKi9l+XK4a5ETc/ks5h0Lp1lUzNgPOvg9edRe+GDk0Fp29M
	61erhcm7SrOxa4rQS4kQXvjoHMuX7at5ADWCb1K2Xg0TypY4oIscfG2b9m8mtbA1m4QH
	XlMamkXAXeBmkI09mwA1QFqi1bbQ4WiWyJXEfrSf87iP0XT/NbR9wdnsUfg/cIPTEEoC
	SZ4dy3nn/cNK5KNKHa/TmhJegu/0C6WjffXnr+zgWXk1fNA/ngdMhiIyq27dXvqVUNhe
	EHsg==
X-Gm-Message-State: ALQs6tBaLVdUKkvWKEtFvbw8AOckbmSOdXXr9UJ6J9qA5TkUzhk9iqd/
	MMQnajTkyR9HL+ni7kFlK0a2Q3AxYqH1lU9FyK59Hg==
X-Google-Smtp-Source: AIpwx49PgKZ72C8ab8dpwYlgoOh8SdWfITqIQi6EWvHe1MvcGAlTB5jA4Xqvq7oPYHs6YjBSoOH9puYhti6tKVbSeQw=
X-Received: by 2002:a9d:f29:: with SMTP id 38-v6mr3366565ott.119.1523454607210;
	Wed, 11 Apr 2018 06:50:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Wed, 11 Apr 2018 06:49:46 -0700 (PDT)
In-Reply-To: <CAEhQi8kGya0qqB8Pj=dSgLaVFR_g2FRK1cuVYrPOBXrogUf8dw@mail.gmail.com>
References: <CAEhQi8=Y7ofTEoTYgdQYkTS31j8W=aL3Hm_QSfuz8qom5r9Xfw@mail.gmail.com>
	<CAJTo0LajNnRO0zQ581LcM0uMMby-=KPiPo7p_fcJzAGNYpM=9Q@mail.gmail.com>
	<CAEhQi8kGya0qqB8Pj=dSgLaVFR_g2FRK1cuVYrPOBXrogUf8dw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 11 Apr 2018 14:49:46 +0100
Message-ID: <CAJTo0LY664+aNeyXWPGLdvfqaD0+3O3HxzOyOWuiX+feNf3MRw@mail.gmail.com>
To: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Is the a reason for adding the + to SRCPV?
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
X-List-Received-Date: Wed, 11 Apr 2018 13:50:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There is no "dbus codegen".  dbus-glib has a code generator but that
doesn't write include guards like that, so it must be something else.
gdbus-codegen appears to be doing the right thing to unless it breaks
if you pass it an absolute path?

Ross

On 11 April 2018 at 10:12, M=C3=A5ns Zigher <mans.zigher@gmail.com> wrote:
> I believe dbus codegen is the tools generating the code.
>
> Br
> Mans Zigher
>
> On Tue, Apr 10, 2018, 14:44 Burton, Ross <ross.burton@intel.com> wrote:
>>
>> What tool is generating the code?  It probably shouldn't be using the
>> full path of the header...
>>
>> Ross
>>
>> On 10 April 2018 at 09:29, M=C3=A5ns Zigher <mans.zigher@gmail.com> wrot=
e:
>> > Hi,
>> >
>> > I am having some problems with one of my recipes when using the SRCPV
>> > the
>> > get_srcrev is returning "AUTOINC+" + rev. This will cause problem in m=
y
>> > compile because I am using dbus codegen and it looks like the
>> > auto-generated
>> > code cannot handle the + sign in the paths. Is there a reason for this=
 +
>> > sign. The generated code that causes my build to fail looks like this
>> >
>> > #ifndef
>> >
>> > ___HOME_EXTZIG_WORKSPACE_MOZART_MOZART_WORKSPACE_BUILDS_MOZART_RASPBER=
RYPI_BUILD_TMP_WORK_CORTEXA7HF_NEON_VFPV4_MOZART_LINUX_GNUEABI_MOZART_DAEMO=
N_1_0_GITAUTOINC+8FD4C803AE_R3_GIT_SRC_LIBS_MOZART_BLE_SETUP_CODEGEN_ORG_BL=
UEZ_LE_ADVERTISEMENT_INTERFACE_H__
>> >
>> > Currently the only way for me to get the build to work is not use the
>> > SRCPV.
>> > Could it actually be a better way then using the + sign or is there a
>> > logical requirement for it?
>> >
>> > BR
>> > Mans Zigher
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >

