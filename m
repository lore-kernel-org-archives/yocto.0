Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97EA5E00CE2; Fri, 11 Jan 2019 13:54:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB450E00CC4
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 13:54:17 -0800 (PST)
Received: by mail-qt1-f179.google.com with SMTP id t13so20526936qtn.3
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 13:54:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=JDXwHRytt72P3b/PzfHKPP2zTv+C76Ank05r5lNXgF0=;
	b=PZzXgieBZivStPU28STk9MtZpI7x5wZ8XuT2Ck8E/z342xQ/wN0bTgByE+ANSUoef2
	nu21U3SShptfU1axMYEAOCEwi3gwHKJq4awtiXwwXUbb5niFYtU724XkVVjd0EHdvaMa
	I4BQTyciYMTKhcy0yRs1Aq446h44f3r2lDKbBTFcAWlZFU0tQogQlcMud/lzdnyuL/nv
	6mjJEX0oBoF67emPDxMawzdnBBuZ3ooEURXs4qdqm3vnFOtjmj/kGCS/4V5c1p3Wx9lf
	We06/IdI5xAlnveK2wPpIKRgUy7wtEQR5z5VjEIMZAdWqgCZtY8W5BEOcc2W5Ugdl87L
	FdmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=JDXwHRytt72P3b/PzfHKPP2zTv+C76Ank05r5lNXgF0=;
	b=aiKQlr5NM+7bx4m7qkvxVshngH99rzrAg1bkSIHE5/rFq74jfIWvrz+PZzyhuIvlzo
	FUBxKJ9djtB67ObjPCT7ZVxPACdLXxL3gMrddCk2hOjWAHuGeY8jWcVl9rmK3xe5HoI7
	i/oiG5SsgBp+6JEVUAxaN8DmxDSP9vlY8LkO1uvNgz4krd6S7KehwSri4b3HJbYFqARC
	FpTRCIZqpwocYQHGchLNJCIL8DQhlZEwNE8THNmYU9l/gmO8sP7rzBpQBZhq+cDXnBPS
	VPCz7gAawhOH2FEFLaQFbJvIANohNUcgLowZF1e9BH8LbMyhuCYHzZA0aGLt7HHMxWLG
	gMOg==
X-Gm-Message-State: AJcUukeh/3DBLDz0U4rlYfP5YDeuzEcchE3ZupAUcv0Rgy4XrvnoJkiw
	zNQr2pKSTxJttgjT9DhjF6O0iws7ZcPW2SuWJP0=
X-Google-Smtp-Source: ALg8bN5puLYzdw6c12PP2vnQgvEb8qOsEUzVYSynXR1apuNnChCpD266qOAX0TkLdSaPer17/a3HF2yxsfiXFZwj2EA=
X-Received: by 2002:ad4:41d0:: with SMTP id a16mr15543496qvq.55.1547243656924; 
	Fri, 11 Jan 2019 13:54:16 -0800 (PST)
MIME-Version: 1.0
References: <20190111190256.9354-1-mhalstead@linuxfoundation.org>
	<CAMKF1sqOtMu9+cqa=_Gan3NqXmT6YDXKNvsOtAf3SCSc9C974w@mail.gmail.com>
	<bc752f4a-0f29-a4d0-d9b0-a9dea5a8a12b@linuxfoundation.org>
In-Reply-To: <bc752f4a-0f29-a4d0-d9b0-a9dea5a8a12b@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 11 Jan 2019 13:53:50 -0800
Message-ID: <CAMKF1sqgvXNS4i3Xu1mdPjYrtL5E-hcd4AXmDQKV0=jytoOiHQ@mail.gmail.com>
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [patchtest][PATCH] scripts: Reset working repository to match origin during clean up
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
X-List-Received-Date: Fri, 11 Jan 2019 21:54:18 -0000
Content-Type: text/plain; charset="UTF-8"

OK then I need to understand how this will be invoked for
meta-openembedded repos

On Fri, Jan 11, 2019 at 1:47 PM Michael Halstead
<mhalstead@linuxfoundation.org> wrote:
>
> Since these commands run in $REPODIR and $path I think they will apply to any repository under test.
>
> On 1/11/19 12:25 PM, Khem Raj wrote:
>
> Hi Michael
>
> Can we enable these checks for meta-openembedded repo as well
>
> On Fri, Jan 11, 2019 at 11:03 AM Michael Halstead <mhalstead@linuxfoundation.org> wrote:
>>
>> If the local HEAD is a patchtest generated merge commit patchtest may be unable
>> to apply new patches. This should prevent patchtest from becoming stuck
>> in that state.
>>
>> Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
>> ---
>>  scripts/create-share-folder | 2 +-
>>  scripts/host                | 2 +-
>>  2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/scripts/create-share-folder b/scripts/create-share-folder
>> index 861da4b..9432cb1 100755
>> --- a/scripts/create-share-folder
>> +++ b/scripts/create-share-folder
>> @@ -122,7 +122,7 @@ function update_repository() {
>>         (
>>             cd $REPODIR
>>             git am --abort --quiet
>> -           git reset --hard --quiet
>> +           git reset --hard --quiet FETCH_HEAD
>>             git clean -f -e ".git-pw*" --quiet
>>         )
>>
>> diff --git a/scripts/host b/scripts/host
>> index 85f0e4a..893ce63 100755
>> --- a/scripts/host
>> +++ b/scripts/host
>> @@ -83,7 +83,7 @@ function clean() {
>>      (
>>         cd $path
>>         git am --abort
>> -       git reset --hard
>> +       git reset --hard FETCH_HEAD
>>         git clean -f -e ".git-pw*"
>>      )
>>  }
>> --
>> 2.17.2
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Michael Halstead
> Linux Foundation / SysAdmin

