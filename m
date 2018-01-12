Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 414B3E00E84; Fri, 12 Jan 2018 07:45:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f52.google.com (mail-pg0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF1F5E0085E
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 07:45:09 -0800 (PST)
Received: by mail-pg0-f52.google.com with SMTP id d6so4800665pgv.2
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 07:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=+6rZlep06AS+xuh0FZiDhDs1RXWD/7+oVc9p5yIwx54=;
	b=Wo2cuNULjnFxAIOljpxHsbvSdwdY23il4TX99obMX/m99DpUsTfI1AudZhcGGe2RoR
	1K/ubLOZuX3HVS9TH1IJp2yhdl6qrVARTHbWxLl5pdGsFvecA9t23i/Jpkad0DkVnAoV
	IJK2R0OfIYKOfxcT8oqHXj8tGphc0lqNXzgaJjkCcwAymy+zqtTbwp16ZhKmS0b1akUq
	TCD6/6gpeTEIHxfqjgNvTBO3nt2PlUw4hZghVfAvy43o35LmKpJEBDA3906Qflsxwytd
	lQmwPPJofI8a6MHtt5vBiPOz3jNGD6poS9zWeTU7137hqGWJNkoquxsVbeu4PVrYIvSA
	facw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=+6rZlep06AS+xuh0FZiDhDs1RXWD/7+oVc9p5yIwx54=;
	b=J+vzEp97iAHr3cvDxtKKlN9v7/QYUyMmR22Jrw4pmQwyGAKXwNm5OKxB4uNPvV96Rc
	a3LG9aIFcOMxxGol0GNRUVLYIOsZB/6eUWrVrJALcmk+PEQmmDxdCYU14eiEiPTKBjja
	ptgAok3nhdErML0HWXHE4tsZJlD9zs8sWf43ETFkFAlpmaoKXw4+LcEpjjHPA/6/thyu
	bpWcc5cbJV2/5dFIqdnfYxBCheLVSC0hiRstTglTxV1WFkylWosrZvUh5BhFcnKFYywe
	jM12nJph/s0W+G7DB++XwD/1M3iDGgjW+2srdVKY8mm58WSyvgu394FkH7SaXfi3TeqQ
	MlcA==
X-Gm-Message-State: AKGB3mIg3xh4QuG4Z7aFrJXRIY1y3JQSA6U+uTQrYLK2/mNSWoXpdApp
	LlznvJR7UAc8z76gkqRvKakShQ==
X-Google-Smtp-Source: ACJfBouaMYgRBMJkF4j3GuyM8mnG8pQKPSdGmhX5xxPc9DH/+LDAH3QFmN+dZwWsj/NruGohkRnAQg==
X-Received: by 10.124.25.17 with SMTP id c17mr21033572plz.90.1515771908815;
	Fri, 12 Jan 2018 07:45:08 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1184:4919:4069:d400:47fb?
	([2601:202:4000:1184:4919:4069:d400:47fb])
	by smtp.gmail.com with ESMTPSA id
	e12sm19513248pgq.8.2018.01.12.07.45.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 12 Jan 2018 07:45:08 -0800 (PST)
To: Paulo Neves <ptsneves@gmail.com>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <CAJO0J4hRZ5xuD6Nd8uu=9P1a1ew9W=PMQDvuK6NJGwwi34v2BA@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <45b77fca-aa3e-6df2-634a-03339602b53b@gmail.com>
Date: Fri, 12 Jan 2018 07:45:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAJO0J4hRZ5xuD6Nd8uu=9P1a1ew9W=PMQDvuK6NJGwwi34v2BA@mail.gmail.com>
Subject: Re: COMPATIBLE_MACHINE not honored in native extended recipes
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
X-List-Received-Date: Fri, 12 Jan 2018 15:45:10 -0000
Content-Type: multipart/alternative;
	boundary="------------8805AFBA8A964E6B1301C461"
Content-Language: en-US

--------------8805AFBA8A964E6B1301C461
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 01/12/2018 07:14 AM, Paulo Neves wrote:
> Hello I am having a problem where I want a recipe, along with its
> -native version to only be available when allowed by compatible
> machine.

 This change should go to the openembedded-core mailing list with a
particular subject line format.

please try:
git send-email -1 -M --to  openembedded-core@lists.openembedded.org
--subject-prefix=PATCH

Thanks for the fix.

Regards,
Armin

> In the non native case, COMPATIBLE_MACHINE is correctly honored. But
> in the -native version the COMPATIBLE_MACHINE is not honored because
> in the native.bbclass there is:
>
> MACHINEOVERRIDES = ""
>
> This change was introduced in d09e6d883042e5d094cd08d829327c4bbbfae135.
> While the explanation provided by the commit is accurate for specific
> case mentioned it also breaks the COMPATIBLE_MACHINE mechanism which
> relies on the MACHINEOVERRIDES variable.
>
> Further evidence that this was not intended is that the exception text is false:
>
> ERROR: Nothing PROVIDES 'x-filter-native'
> x-filter-native was skipped: incompatible with machine m1 (not in
> COMPATIBLE_MACHINE)
>
> And the x-filter-native'.bb recipe header contains:
>
> COMPATIBLE_MACHINE = "^m1$"
>
>
> So the exception uses ${MACHINE} to report that a ${MACHINEOVERRIDE}
> was not matched with the COMPATIBLE_MACHINE, which is a false
> statement.
>
> My solution is very simple and does not break the fix that
> d09e6d883042e5d094cd08d829327c4bbbfae135 did:
>
>


--------------8805AFBA8A964E6B1301C461
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 01/12/2018 07:14 AM, Paulo Neves
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJO0J4hRZ5xuD6Nd8uu=9P1a1ew9W=PMQDvuK6NJGwwi34v2BA@mail.gmail.com">
      <pre wrap="">Hello I am having a problem where I want a recipe, along with its
-native version to only be available when allowed by compatible
machine.
</pre>
    </blockquote>
    <br>
     This change should go to the openembedded-core mailing list with a
    particular subject line format.<br>
    <br>
    please try:<br>
    git send-email -1 -M --to  <a class="moz-txt-link-abbreviated" href="mailto:openembedded-core@lists.openembedded.org">openembedded-core@lists.openembedded.org</a>
    --subject-prefix=PATCH<br>
    <br>
    Thanks for the fix.<br>
    <br>
    Regards,<br>
    Armin<br>
    <br>
    <blockquote type="cite"
cite="mid:CAJO0J4hRZ5xuD6Nd8uu=9P1a1ew9W=PMQDvuK6NJGwwi34v2BA@mail.gmail.com">
      <pre wrap="">
In the non native case, COMPATIBLE_MACHINE is correctly honored. But
in the -native version the COMPATIBLE_MACHINE is not honored because
in the native.bbclass there is:

MACHINEOVERRIDES = ""

This change was introduced in d09e6d883042e5d094cd08d829327c4bbbfae135.
While the explanation provided by the commit is accurate for specific
case mentioned it also breaks the COMPATIBLE_MACHINE mechanism which
relies on the MACHINEOVERRIDES variable.

Further evidence that this was not intended is that the exception text is false:

ERROR: Nothing PROVIDES 'x-filter-native'
x-filter-native was skipped: incompatible with machine m1 (not in
COMPATIBLE_MACHINE)

And the x-filter-native'.bb recipe header contains:

COMPATIBLE_MACHINE = "^m1$"


So the exception uses ${MACHINE} to report that a ${MACHINEOVERRIDE}
was not matched with the COMPATIBLE_MACHINE, which is a false
statement.

My solution is very simple and does not break the fix that
d09e6d883042e5d094cd08d829327c4bbbfae135 did:
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------8805AFBA8A964E6B1301C461--
