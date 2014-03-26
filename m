Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34A60E00B90
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 13:45:28 -0700 (PDT)
Received: by mail-oa0-f54.google.com with SMTP id n16so3240064oag.41
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 13:45:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=BZbgP55hXdeYmtjh7XTirS5M5pCjIAq2YjQV+CMzWoQ=;
	b=f+oYdYh2gmkUqk4oS++2aPw0WzdOI9Y0P2+xzOPWU/Ld2qbCf64sEc4vIgSgc1c6w5
	3JchQYfNQUv+w+zNq91hMqcSb0+0ISxRqLPB7FyhQ/BqVivNUCY+YF4DWi6IVjJPye39
	bnoDz/Ra+8zJ6k2kvZUbHcBX2RDzdhVXCk7xE+UMgfITADW6dkVjgq3gKIG0++CBTd1i
	SAlCfDn9dEYeRXgbA9M8+grk7I01fnOgX388EZZizgy4sy6hK2nXBJW3Ss0mK0MU4n31
	3Pf9U+x1aHvhyheXtfHTRlbhTMG7YeqnASimkYe/ud6oKhrEzMgOr3FCRQFokYyucz35
	jwFw==
X-Gm-Message-State: ALoCoQlw/nN1GZDUfdH4xNncd8F+sj9VPaDqEandPiQe75T13hMsyzsDmP6zairs50Md6yRSLFoN
X-Received: by 10.182.2.42 with SMTP id 10mr3112674obr.73.1395866727984; Wed,
	26 Mar 2014 13:45:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.110.9 with HTTP; Wed, 26 Mar 2014 13:45:07 -0700 (PDT)
In-Reply-To: <CAP9ODKoSO6ewoim_4c6N15C5-uQz0XQ3kPam421mYRPhRcWoNg@mail.gmail.com>
References: <1395676843.24890.7.camel@ted> <5330C9A8.904@linaro.org>
	<20140325055028.GA3710@jama> <5332E520.5050005@linaro.org>
	<CAP9ODKoSO6ewoim_4c6N15C5-uQz0XQ3kPam421mYRPhRcWoNg@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 26 Mar 2014 21:45:07 +0100
Message-ID: <CAP71Wjz2MD52m_ij09nCRZoDh6iJfojae7sJYK4ZwSqZ_qGVZQ@mail.gmail.com>
To: Otavio Salvador <otavio@ossystems.com.br>
Cc: yocto <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] --conf Was: Features in Yocto Project 1.7
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
X-List-Received-Date: Wed, 26 Mar 2014 20:45:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Mar 26, 2014 at 3:38 PM, Otavio Salvador
<otavio@ossystems.com.br> wrote:
>> As a concrete example, currently I'm flipping between dora and master
>> builds. For some reason I can't seem to reuse the same TMPDIR between
>> them. So every time I "repo init -b <newbranch>" I then also have to
>> edit conf/local.conf before bitbaking.
>
> Use separated build directories for this, so you don't need to mangle
> conf/local.conf every time.
>
> Personally I have different trees for Dora and Master and inside it I
> have several build directories when working in this kind of test
> (different distro features and like) and this is easy to maintain. For
> auto builder, we cooked a script to abstract the configuration in
> command line options so we can easily extend it and get it used in
> several build jobs.

I do that too. build folders are 'cheap' assuming good use of sstate
and rm_work. my typical setup is:
- one workspace for each OE release branch (trees checkout)
- one <build> folder for each combination of <distro>-<machine>
- one shared downloads folder for *all* builds across all workspace
- one shared ssate for each workspace . i am not sharing sstate across
OE releases, mostly because sstate-cache-management would always
delete the wrong stuff otherwise.

