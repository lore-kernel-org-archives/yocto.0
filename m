Return-Path: <alan.martinovic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3ABEE00BA2; Fri,  1 Nov 2019 14:30:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alan.martinovic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
	[209.85.208.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51273E0083D
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 14:30:48 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id m9so11575311ljh.8
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2019 14:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=zuSokRmMMwcPe/DtpGKgM/B1s2kFALS3BOrX5ybzvtU=;
	b=Eg/Oouvx91ePritI4UfQn4KeqZAav+joxRLQvznoSrFOyJkxvlfog1TmbMQy1WWJIX
	zE6QmgghN+HOwOBBYv8/cQZH9Vf5YnSUma+aLb8eyHu/C+y9OJ/R+SqyLq+iPf0GB5VN
	4LgZ7e7bYAogT/vF5CJqHLxt7gZxnJcFlUVRe+EaGnDQIVfBv0MelVrgxFwUtNPg0QCp
	/xFX251vrQnw0jBDlSsZVPFOR2jy7SFup6l5hr1KREJJ8C8WFK+QAJ06DXRkIxLEQqEs
	SOipp0f7A8o5uhuqFPDkLQ6r9KdXSLMoGPfsj/X2JWi1FBM750hhbMEiBOlUm4YFpDMB
	Ajqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=zuSokRmMMwcPe/DtpGKgM/B1s2kFALS3BOrX5ybzvtU=;
	b=TbfudwyWIQmE6NpxC3vsVxCzasOQxj3cEmnT4XC5QpzogtmMYDBQOo4Zy3U41ca2Vz
	UVdG0bhhKKKhr9DDRW9LIDEOaXg+AVDp6xHDWg3zi577YsYuJpSaaCuFNiVOaXlFD93i
	yOhOljCE/XTJSfcT6H+4jf/+48csm4Z6ZQ++nL04x8g5FfVaanUWR1UFnqvvV6SLqR1G
	eLp+NuQjmerTX0PFdh8v+QrWwrvU1nswe6aqaCG6frF+NSEZcWpGJyeFju0tfulovYZ+
	8gbuWJtngiWjTZ8Kt5R/rbWZSwGxvBq9z+scewGuLtQp+Uc+afcsXOSg0ZS/kevzTQ/R
	S76w==
X-Gm-Message-State: APjAAAVNWpBzZCEE7BrDiORex0rlNz8nRoqXWbm5M1GWMnMQXCaBDRAJ
	e2VoQFCbDnBVuNX3uAuTCKlBfMQDbIF1tDftihZFsIDfXjU=
X-Google-Smtp-Source: APXvYqwFQGMQAzZYN0OUjmEay4NW+A7vz3UHUJaxIDZE+mqJVNf3BBWkBfQwWHteqbOCXMA0IjLzQ3jrL3ObdnjbWkE=
X-Received: by 2002:a2e:9595:: with SMTP id w21mr9637134ljh.181.1572643847209; 
	Fri, 01 Nov 2019 14:30:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAHTPtPFJqQnPrH3WwKetfU8GN3YD6okYK=R-HyMPzQ9Ym44JTA@mail.gmail.com>
	<313f9bdb-d016-5701-00cf-8f3dccbf211d@intel.com>
In-Reply-To: <313f9bdb-d016-5701-00cf-8f3dccbf211d@intel.com>
From: =?UTF-8?Q?Alan_Martinovi=C4=87?= <alan.martinovic@gmail.com>
Date: Fri, 1 Nov 2019 22:30:35 +0100
Message-ID: <CAHTPtPGqQCu7XY3KaYZGojtfRHdWxi-LFh9noPSGBiNrk9yu8w@mail.gmail.com>
To: Ross Burton <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Debugging custom python code in recipes
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
X-List-Received-Date: Fri, 01 Nov 2019 21:30:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Cool, thanks.

This one seems to be the most up to date from the python debugger wrappers:
https://github.com/ionelmc/python-remote-pdb

The `shell_wait()` in your bbclass is related to the pdb() functionality?

On Fri, Nov 1, 2019 at 10:14 PM Ross Burton <ross.burton@intel.com> wrote:
>
> On 01/11/2019 20:44, Alan Martinovi=C4=87 wrote:
> > Hey,
> > there was a question today about options for debugging python scripts i=
n yocto.
> > I've patched up this PoC for remote debugging.
>
> FWIW, I've done something similar using bare pdb.
>
> https://github.com/rossburton/meta-ross/blob/master/classes/pdb.bbclass
>
> Just call pdb() from Python context.  Not as neat as epdb though.
>
> Ross

