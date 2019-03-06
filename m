Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27096E00C43; Wed,  6 Mar 2019 14:47:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f179.google.com (mail-it1-f179.google.com
	[209.85.166.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C363CE0096F
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 14:47:52 -0800 (PST)
Received: by mail-it1-f179.google.com with SMTP id l139so12766479ita.5
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 14:47:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=v57isP134/mQ9rcjF4gpfwooMdeDYQWCVIXltqgPT+8=;
	b=0orfEPmINVQ7qwMAP61w7Q4qLNB31gFyOPiXsrTUUQb5GqEkk9VXgD5OsiMny0z1bc
	H33l6FbmVr+QEl89ZPF/3oSDafyz9ejxeilIlBY3WiiZsRtPbOyI/E2jIvpTjkDXIDT8
	pi9zHmMBmkUMjXaZKzBOxdhs9Es4R9G/I+g/N+8Rc9DCKOW4LyVyOIRALxMSe/LqaeMH
	ziVbyAcRcsKPp3Wwxzea1De/+WX4/P+34Fdf6vS14qg6tcU/lgvZz7lmVWG86+yUcqMK
	E2VVRrzQ3Oz8xg1PU+kcoXG1xwjgtSt3TB3Q2tdsK4rBdjCDUKTDYutZbTz2W2fHG1/O
	Sr6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=v57isP134/mQ9rcjF4gpfwooMdeDYQWCVIXltqgPT+8=;
	b=uQNtktune1yvkETDYg3CwjaokTjEjtpKJJx2FYyT0bqyPuSjXvd1TfytL4GCWYtaV7
	YcO4pSPSUH8dNs595YzHrynd+/VKvCzJB2PZRpdB4bp+UmOZmftkituOez2N8krV1BiE
	Db2zd4tRzTKiv2ihipajk/HJkepwwpmyL1LtDXFiYfdLCA+QYQLn3ldx2y/lOE+g3NGv
	3AT6lmjBviDHAdGntIIbFB5iT/OeQStx9rGTeVyJvoVcSdmyPJ/EQScUxXGnmikhbnfo
	2+3/R1Qgl3ojWYeXYL4qjQAnVdGb5XR5ZA+4ZnogDgAjuaC9MEWaUCGhzMGsyUXfTBum
	zcLQ==
X-Gm-Message-State: APjAAAUU44iE/StuIhzgKQ0dYE1fHR3cAp7SnEq6bVtTVWZaKIpPt26V
	6taMmtbJkT1S4OgB2NIdZVbvzOZohhDZ3jRpXaZbcA==
X-Google-Smtp-Source: APXvYqxMyBjuNmeAtK4zOUenrQ3UO0945hyjG5a8HPgt/Vw9HLvZOVNaLI/c7UglkfcmcaP0RJI914EESgChfGCKiZo=
X-Received: by 2002:a24:2ec2:: with SMTP id i185mr3292890ita.62.1551912472162; 
	Wed, 06 Mar 2019 14:47:52 -0800 (PST)
MIME-Version: 1.0
References: <4d30a0e379c74c9e673fd65721463b04@mail.kylheku.com>
	<fd98415c1d3aebb569a588bfa0faf9f3d86ca9cd.camel@linuxfoundation.org>
	<e21f2565c099e27ab58c7c7feaafdb95@mail.kylheku.com>
	<CAJTo0LZ=ebR2Mao_-vyFN8YTg2pfse2Ls476pb5hHZaQGMBpkA@mail.gmail.com>
	<e382eb0d50ca12ccafe454636717459e@mail.kylheku.com>
In-Reply-To: <e382eb0d50ca12ccafe454636717459e@mail.kylheku.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Mar 2019 22:47:40 +0000
Message-ID: <CAJTo0LY76gZZDrpfcprMJUofhv04ZweojsPc=QgyGQehm47H4A@mail.gmail.com>
To: "Kaz Kylheku (poky)" <442-103-8455@kylheku.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Incremental rebuild doesn't pick up FILES changes.
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
X-List-Received-Date: Wed, 06 Mar 2019 22:47:54 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 6 Mar 2019 at 22:27, Kaz Kylheku (poky)
<442-103-8455@kylheku.com> wrote:
> Ah, okay; this is because it's been split into various sub-packages. So
> we have to operate on "-core".
> The .json manifest brings these into the "core" package:
>
>              "${libdir}/python2.7/encodings",
>              "${libdir}/python2.7/encodings/aliases.py",
>              "${libdir}/python2.7/encodings/utf_8.py",
>
> I don't want all of encoders, just the utf_8.py and the aliases
> dictionary.
>
> So I'm guessing this should be
>
>    FILES_${PN}-core_remove =

Yes.  It's too late to think about parse ordering because of the
complexity of Python's packaging but that *should* work.

Worst case: provide your own manifest if the packaging isn't what you want.

Ross

