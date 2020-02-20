Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3686.1582194832711832945
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 02:33:52 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linuxfoundation.org header.s=google header.b=hNodSMiq;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AFECE01611; Thu, 20 Feb 2020 02:33:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBAAFE0144C
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 02:33:50 -0800 (PST)
Received: by mail-wm1-f47.google.com with SMTP id t14so1435591wmi.5
        for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 02:33:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=ENda3+DnZBD0ZKF9EONxg3CgRZAcWtjO7SABlAT/R8M=;
        b=hNodSMiqy+SzP6RgS1wg2xfjtsR3F8rfVtvNQDaACVobiNakzrZ+fK8vVkFHjExPgF
         lR0rGbLUpu4KEtnoQ1dWvxAzEgOPdMTvFA9vvKN91w/KN+zFYxCy2Akw42VdEGLyf6mL
         iZ2S3YFTdJUDOWawo7gzkIo7TjoctyH5FxYYk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=ENda3+DnZBD0ZKF9EONxg3CgRZAcWtjO7SABlAT/R8M=;
        b=rgn6Sn2WbepCr4mSGMSB1lZKlzyLHy+0cNaiNb2J2ns78Rc1So65fNm6sh1yALnZwl
         JkCxdlHwLRwXMubCf8XoIDbkUgNYzy9vwd7uzEsFnzoVGfFp5kyWmK7zj1d2ie2MkFRY
         ki8/kkDR8Vm2Gx48F1dbfLLoYSxJVW8fzBGG6ixx6D3LoIe2xpOtGCIWB3hP4zy0UT1k
         zPqQ5vl1lQoNRlC/NzWHoJDhzg+trbdMOJMKovAEpYI9IP9rBb9NfenX+dYAuGBVpx+F
         z2yt3IEFjpI9Moa9lxQ8BmBJrq9d+30MmqAwQyVZDEombz7/Yb8qKYc3fMdUw8Bfu+YV
         pg7A==
X-Gm-Message-State: APjAAAWX+Fq+vAmebDMl6aux8JJw11LmaJUrHGF7oXzpbTXMAbc7gkki
	zB3G9TGAXE85PjHHlm09kCz3OA==
X-Google-Smtp-Source: APXvYqwNMsQUJ8FfJ34FbeOlyqkzaJ2qvDC77HuScc3sVquu0OMDLOHBOsJb4sFMne2oXWxuIAWeqA==
X-Received: by 2002:a7b:c4c5:: with SMTP id g5mr3781551wmk.85.1582194830102;
        Thu, 20 Feb 2020 02:33:50 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id t128sm4192321wmf.28.2020.02.20.02.33.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2020 02:33:49 -0800 (PST)
Message-ID: <77217fc86fe8451eae53e3b6e93cd9cefab8b022.camel@linuxfoundation.org>
Subject: Re: [OE-core] Yocto Project Status WW07'20
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "sjolley.yp.pm@gmail.com"
 <sjolley.yp.pm@gmail.com>, "yocto@yoctoproject.org"
 <yocto@yoctoproject.org>,  "openembedded-core@lists.openembedded.org"
 <openembedded-core@lists.openembedded.org>
Date: Thu, 20 Feb 2020 10:33:47 +0000
In-Reply-To: <CY4PR11MB18792EA8DAE6F08AD3CED448E3130@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <0b8a01d5e675$d2363e30$76a2ba90$@gmail.com>
	 <CY4PR11MB18792EA8DAE6F08AD3CED448E3130@CY4PR11MB1879.namprd11.prod.outlook.com>
User-Agent: Evolution 3.34.1-4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-02-20 at 07:46 +0000, Jain, Sangeeta wrote:
> Planned upcoming dot releases:
>  YP 2.7.3 built and in QA
> =20
> I didn=E2=80=99t see any notification for this build. Am I missing some=
thing?

No, its due to be built but isn't built yet!

I think that was meant to say 3.0.2, sorry about any confusion.

Cheers,

Richard

