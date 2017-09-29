Return-Path: <francescogiancane8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BF70E00D67; Fri, 29 Sep 2017 01:35:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (francescogiancane8[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E8D3E00D5B
	for <yocto@yoctoproject.org>; Fri, 29 Sep 2017 01:35:15 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id b189so447509wmd.2
	for <yocto@yoctoproject.org>; Fri, 29 Sep 2017 01:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jYwNCQ0/0bSDj7F53Ezx/HFG95CQZ8Ijk91VMb+Zib8=;
	b=NBb1GROTMuZDO2nkxMXyHB0ydZ41nk+VVKaCa0SrzNzWeqJkH2ms9HDLFCXUVUS1eK
	kV7USRhIIF6awLNmY8MvHvvKwXusZqX5Ao/VzWA+f8qjmLnw8mxydBupFaSKDxQetbhv
	S2hLsb9+NTVDswVVptFHU7nqx72SWDKA5rgwqdCWK92pxDxtoqYSWU8LdxZIEBUVnUdG
	mzIW/LSdiZtBu5luvjo7tlNDG60QBtJlGz5d2i1YPMFDmmbwzjZGRqXhsE8OPXJdjvL+
	YLhIpCaNv1QJiTHUF4xUJAJnIhKE9gYsr1ibdHUN5f32LjEVewbK5ZnmTdScUwuErwd4
	akBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jYwNCQ0/0bSDj7F53Ezx/HFG95CQZ8Ijk91VMb+Zib8=;
	b=YmWlnwQ6b2OdrbtX/keb/83MKQ/L13nb7X8zvs9tdyhXce14d/7arInUU/VI4J6PdW
	V9X4M2ijsWbVVBFBM6MnaUSxxD51DMF7Gc4cumQGYldCpjrOQGyjtZr4HqfHfcAo3E+Z
	VpRTeymLsEYsq8qBL3XVV1i3Fp8t0hKV+C/EUiyFm10UcIpaENumS+nzIjRsVsCMA+Zk
	ZlglP3lbo2pYRbmXn1VbFzvWf8ips4rAHOcT4vacp4SefcpvLGM8XqzoXRSowQ5fkk1E
	j3mAF5ws+7ZbS4n+O4PcikH98kGLvZrqlbYp5IxFf6p5fVDiwr5BFeGyrS0rX01G7WvR
	VGlg==
X-Gm-Message-State: AHPjjUg1MlyYWd9YamP9JQDXT1gPD+JKRVKzFjQI+o7R3tsPqE46QlJu
	brLjaafcDP7yjj8sO16/J25SFsAyluxpVveErOs=
X-Google-Smtp-Source: AOwi7QAUVt2bKNifcY+PVbI/T8thWixe9G/LIXA62+LlEn2ovBZg4ez+9U+y7GlIjMuCf5L38i3WNi/zwsbs4EXsjyA=
X-Received: by 10.80.174.36 with SMTP id c33mr8830377edd.191.1506674114791;
	Fri, 29 Sep 2017 01:35:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.142.236 with HTTP; Fri, 29 Sep 2017 01:35:14 -0700 (PDT)
In-Reply-To: <CAC+thW22=x3nzTQvfVMizLe-jWXEfP5EPUEbPy+ypqVxbOOdqQ@mail.gmail.com>
References: <CAEQ58si6bpFQ47B2XR6i3EbMF-z47ETYRvQtYAPCEcnwSTiqkQ@mail.gmail.com>
	<CAC+thW22=x3nzTQvfVMizLe-jWXEfP5EPUEbPy+ypqVxbOOdqQ@mail.gmail.com>
From: Francesco Giancane <francescogiancane8@gmail.com>
Date: Fri, 29 Sep 2017 10:35:14 +0200
Message-ID: <CAEQ58shR6+9fy5byibXhq_rywr8kU-dfV-1XZKH4nePfRBRMUA@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: weston and xorg-xserver fail to build when using Raspberry Pi 3 user land
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
X-List-Received-Date: Fri, 29 Sep 2017 08:35:17 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Andrea,
Thank you for your answer.
Will resend the patch to the open embedded mailing list.


Francesco Giancane

Via Paolo Braccini 46, 10141 Torino (TO)
+393933920466
https://it.linkedin.com/in/francesco-giancane-aa7213117



2017-09-29 9:09 GMT+02:00 Andrea Galbusera <gizero@gmail.com>:
> Hi Francesco,
>
> On Thu, Sep 28, 2017 at 9:25 AM, Francesco Giancane
> <francescogiancane8@gmail.com> wrote:
>>
>> Hi everyone,
>>
>> I noticed that if I changed the provider for virtual/mesa (in
>> particular, virtual/egl) to 'userland' for a raspberry pi 3 build,
>> bitbake fails to resolve the dependency chain, complaining about
>> missing RPROVIDES libegl.
>>
>> The point is that NO libegl is ever provided, only "egl" package.
>> Thought it was a typo. No building errors so far.
>>
>> What do you think?
>> Patch attached.
>
>
> This probably goes to oe-core mailing list, which is the upstream project
> the patch applies to. Also consider sending inline patches instead of
> attachments [1].
>
> [1] https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

