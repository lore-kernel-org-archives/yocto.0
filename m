Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1BC4E00E47; Thu, 25 Jan 2018 10:34:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30F9AE00E13
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 10:34:38 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id k68so5597973pga.3
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 10:34:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=ASsuZMZRzKJDRYNBuERgygwRZzSIaDZVzSaxG12jn40=;
	b=XtfmvZwWmXxO7zTLtK7rCHTKGyRrLUxQ3SvJD0nv6V/Fyr+5LWqxvOk/dEp1NCBNbv
	LqGRFl1O1Iu+/J7hDzbR0Yf1rO2aT19GI2jFpp9bLe/Rh8tA21IagASMDGxSLSqVS5UI
	oUb2A2fpK+ipopGXSdSkj4cSeBo0RpXs9j8KHZjuB8uuspZgnAeU36TgqTcyzzxzgKb8
	SMpCf71BS9CEYbfyjxDWmHTwF5g1BqoI8zkM/fNvgCPVdC7WMuPLfnDytZrG5kDTGQ9J
	LyakpArBshnFxE6IhuuXpDwlDRIVzGvyA48nFke2C9SEUALmuzXSx1dh0I57fge7DSaP
	m2nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=ASsuZMZRzKJDRYNBuERgygwRZzSIaDZVzSaxG12jn40=;
	b=bpp+ydM4pUTSf99f1KCSVEGMp4oFY6ya6uJZU30FIYJEmpDocYpUwG6ZyiUjZFNThw
	X7MFc7rbV5w851bfviQNWNbfzRi4Z1xrB8+4DMHid2MdRdlBrer0vFq8v7Bd5MNNTlmu
	0M/sx10UuPwSH6vb5S4eXQKniKXZAC4l/3kNLnULf50sE1MhvSMVu9KuY/UPwyYPH2wF
	ngep0evXGodgDyKB6zmoB5+HgDHxaNIVshguZZx2rauCQnO1VmsitQLfiwTGT5SEHJlx
	xhXrxCiWHHCqc79IAJ+TbdW9iaRZpA/Zp3naaEVtpxA7bAdtJAKz+I9R2U10h1+lrd7x
	CqBA==
X-Gm-Message-State: AKwxytc7WjaZQFhOfMWB5A7ViXOuZl2rpg7RKKcKrybnPWkA9djgPTpY
	iQ/Ryp8uuTnthfgJPG8QoCTrMfZK
X-Google-Smtp-Source: AH8x226eSXei5iBL6/+BcE8A7PEvGEjpgwdBK8NRc6OfvNQd6HOE6lUQus96N07VHOJOsBPUmodq0Q==
X-Received: by 2002:a17:902:7482:: with SMTP id
	h2-v6mr2714516pll.401.1516905278090; 
	Thu, 25 Jan 2018 10:34:38 -0800 (PST)
Received: from ?IPv6:2601:646:8880:466c:c139:8d30:e308:8c2a?
	([2601:646:8880:466c:c139:8d30:e308:8c2a])
	by smtp.gmail.com with ESMTPSA id
	f72sm18287819pff.145.2018.01.25.10.34.37 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 25 Jan 2018 10:34:37 -0800 (PST)
To: yocto@yoctoproject.org
References: <CAPyrkgyNO2D6rO0gHb5bvDDa_PHEqeVy5HwN4WP8qm4HQxkM3A@mail.gmail.com>
	<CALw8SCXV1DotXLNLz3UH0Wswz6F-y=ZraT=e9HWtBWqbkqnzGg@mail.gmail.com>
	<CAPyrkgxm5DAU+2X7nwSpENv7534e1gDzS3uA4BHq2SX2po8Z9Q@mail.gmail.com>
	<CAPyrkgwLJGpY3_WioGifiisa0VEvTGjdBV-Jc6nRw+bJ1cGn8Q@mail.gmail.com>
	<CALw8SCVty32Ob50S8qrdxUUmm+jyG-KibHq7GV26K+yScPdLEg@mail.gmail.com>
	<CAK18fxF_mU3e9-aBEWbAW_ewce3kvOLCFXtExDK6rMJH=C2KWw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <435939ad-64f1-a6cb-f55b-1dc1a5c83c69@gmail.com>
Date: Thu, 25 Jan 2018 10:34:36 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <CAK18fxF_mU3e9-aBEWbAW_ewce3kvOLCFXtExDK6rMJH=C2KWw@mail.gmail.com>
Subject: Re: Layer documentation for meta-raspberrypi
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
X-List-Received-Date: Thu, 25 Jan 2018 18:34:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 12/21/17 7:15 AM, Andrei Gherzan wrote:
> Nice. Good job.
> 
> --
> Andrei Gherzan
> 
> On Mon, Dec 18, 2017 at 9:57 PM, Mirza Krak <mirza.krak@gmail.com
> <mailto:mirza.krak@gmail.com>> wrote:
> 
>     On Dec 18, 2017 20:50, "Paul Barker" <pbarker@toganlabs.com
>     <mailto:pbarker@toganlabs.com>> wrote:
> 
>         On Mon, Dec 11, 2017 at 12:20 PM, Paul Barker
>         <pbarker@toganlabs.com <mailto:pbarker@toganlabs.com>> wrote:
>         > On Mon, Dec 11, 2017 at 12:08 PM, Mirza Krak <mirza.krak@gmail.com <mailto:mirza.krak@gmail.com>> wrote:
>         >> 2017-12-11 12:55 GMT+01:00 Paul Barker <pbarker@toganlabs.com <mailto:pbarker@toganlabs.com>>:
>         >>> Hi all,
>         >>>
>         >>> As a quick announcement, the layer documentation for meta-raspberrypi
>         >>> is now available on Read the Docs:
>         >>> http://meta-raspberrypi.readthedocs.io/en/latest/
>         <http://meta-raspberrypi.readthedocs.io/en/latest/>
>         >>>
> 
>         >>
>         >> One little thing though, the current "theme" used which I assume is
>         >> the default Sphinx theme is not optimal IMO.
>         >>
> 
>         >
>         > Thanks for the feedback. The conf.py file we're using is just what was
>         > generated by sphinx-quickstart with minimal tweaks. It sets html_theme
>         > which is obviously overriding the default for read the docs.
>         >
>         > I think I should be able to get the right behaviour by commenting out
>         > the html_theme setting completely. I'll give that a go and see what
>         > happens.
>         >
> 
>         That worked. Looks much better!
>         http://meta-raspberrypi.readthedocs.io/en/latest/index.html
>         <http://meta-raspberrypi.readthedocs.io/en/latest/index.html>
> 
> 
>     Great job. Agree that it looks much better.


what is that triplebyte thing? Can this be kept off
 
> 
>     Best Regards
>     Mirza 
> 
> 
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
> 
> 
> 


