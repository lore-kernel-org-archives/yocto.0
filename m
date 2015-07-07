Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 260D2E00960; Tue,  7 Jul 2015 13:07:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D371DE006EE
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 13:07:37 -0700 (PDT)
Received: by igcqs7 with SMTP id qs7so41056646igc.0
	for <yocto@yoctoproject.org>; Tue, 07 Jul 2015 13:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=vJwDddK5tYf+6GmWcijpDhRhB+iNioh4HrSHwU2oRkU=;
	b=PwDxdZMcsoJDN7YIWV/NSr/CGkpxUcoFiT1OCUlk3vUsmWycXhNvVQT5gdr7UIcpCz
	q3gjFUU/B9/FXPBtZX/kL1oE7vGj6nPScqGWSeuyjo+8hUYtqscq9cUskvf5w9uOcH9S
	v60xGUfG7dGaW64EZvVtvl5yexzx0e9/rEOVeTTTnglWodClPZedHCqKkA7krc8QDbmg
	JQU7jROEB5FYpBjhHHnqvIdg/++GruKUMfyAMlgmvGcdGoddFja2OwUyTsFW1CrwUaUm
	/US7Fb4JbvaSWrnyAylYGLIXlndCyVoQyoYl4I7a9oXreGgs3+OHlIE0c4y6iZJlnTX1
	JPJA==
X-Received: by 10.107.47.26 with SMTP id j26mr9933450ioo.17.1436299656895;
	Tue, 07 Jul 2015 13:07:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.109.196 with HTTP; Tue, 7 Jul 2015 13:07:17 -0700 (PDT)
In-Reply-To: <87d203ybx0.fsf@weregild.amer.corp.natinst.com>
References: <CAAPegz1a+Jf=DaTNnGDnGUrwZiEGCfc7f4F2tPpNvFmF3=M6Jg@mail.gmail.com>
	<558AACF7.2090107@dynamicdevices.co.uk>
	<CAAPegz07fJ=rL2619-WZW1CUA4WNn6CEO8CT73B8GxESJYSX8Q@mail.gmail.com>
	<87d203ybx0.fsf@weregild.amer.corp.natinst.com>
From: Chris Morgan <chmorgan@gmail.com>
Date: Tue, 7 Jul 2015 16:07:17 -0400
Message-ID: <CAAPegz31c_b7hfi9YDbZ3uPz0iiDNMpT3=P0=SsZDYjCMGcOHg@mail.gmail.com>
To: Richard Tollerton <rich.tollerton@ni.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-mono: Issue building 4.0.2.4
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
X-List-Received-Date: Tue, 07 Jul 2015 20:07:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 7, 2015 at 4:01 PM, Richard Tollerton <rich.tollerton@ni.com> w=
rote:
> Chris Morgan <chmorgan@gmail.com> writes:
>
>> /home/cmorgan/projects/yocto-cybex/build/tmp/work/x86_64-linux/mono-nati=
ve/4.0.1.34-r0/image/home/cmorgan/projects/yocto-cybex/build/tmp/sysroots/x=
86_64-linux/usr/lib/mono/xbuild/Microsoft/VisualStudio/v11.0/WebApplication=
s
>> | /usr/bin/install: cannot create regular file
>> '/home/cmorgan/projects/yocto-cybex/build/tmp/work/x86_64-linux/mono-nat=
ive/4.0.1.34-r0/image/home/cmorgan/projects/yocto-cybex/build/tmp/sysroots/=
x86_64-linux/usr/lib/mono/xbuild/Microsoft/VisualStudio/v11.0/WebApplicatio=
ns/Microsoft.WebApplication.targets':
>> File exists
>
> Did you try disabling PARALLEL_MAKE? I found a flat-out race at -j6:
>
> /usr/bin/install: cannot change permissions of
> build/tmp-glibc/work/x86_64-linux/mono-native/4.0.2.4-r0/image/build/tmp-=
glibc/sysroots/x86_64-linux/usr/lib/mono/xbuild-frameworks/.NETFramework/v4=
.5/RedistList/FrameworkList.xml: No such file or
> directory
>
> ... and FrameworkList.xml nevertheless existed once the failed build comp=
leted.


I haven't tried that. Is that something that would go into the recipe,
if it were necessary? If so, how do you do that?

Chris

