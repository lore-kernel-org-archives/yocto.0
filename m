Return-Path: <leon.anavi@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85581E00CE9; Fri, 11 Mar 2016 02:35:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F16E6E00CD8
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 02:35:16 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id l68so12460158wml.0
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 02:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=VqopNUGn1omqLA7NPxPWkWUQ8Kjoo3pCkgi7oIsUAz8=;
	b=WMYXbHUJsG0tlzkQGEyUUM8MLQeIdU8I5rCWvOhXZ8qnTRb9DGlt9zyHVozq4unXTn
	T8jBvWX8K3uY4dl0SqkH3ZMSNHLva3YXE5hsDF7sCjCv7ubDA6vqXDyLMOIPnfdQRXkC
	mus5Kyuf6mztobmn8331hUPd63gywwNqT8A1k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=VqopNUGn1omqLA7NPxPWkWUQ8Kjoo3pCkgi7oIsUAz8=;
	b=HW91b3eg6wBz5dODTNb8Hl/WZbnx+HZ/BZwlSFLXI0MNoxMLlB+QLDwkV8ZrRFZ5jv
	nb0njEuZha+iD5A3Nd33QxyBjLPtXjrE9oghyNVf4ZBjjA8vEsjHbRGhICngvslTU1QN
	BaML3IEp5FVknEVOuZ8vG1YhvzGDxOed7hdVUAyenY/2G1AMKuULEHvWTXME/dv3qhGj
	NoNP1aQKg1OcribA1JIvqIVGwfbxL9MOE6O/ntqO2Ac7hL3Fer80vKbs4YRd7BoB92ot
	j0ENYFAepj5g+HoEL0ODubnUaLb+G67aeenfrurtQ8wiCR/lFz9te16n84+lWyCsPbp4
	eE1Q==
X-Gm-Message-State: AD7BkJIwyGleT69WOKutdVgt8cWOqYNFTn4UTfg2JZiYYeU7MKdf+rgmoI9OOG5KW+9K1w==
X-Received: by 10.194.91.233 with SMTP id ch9mr8999554wjb.121.1457692515766;
	Fri, 11 Mar 2016 02:35:15 -0800 (PST)
Received: from [192.168.4.190] ([5.53.209.92])
	by smtp.googlemail.com with ESMTPSA id
	xx3sm7757472wjc.32.2016.03.11.02.35.13
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 11 Mar 2016 02:35:14 -0800 (PST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <56E293BD.1080009@konsulko.com>
	<CAJTo0LZDKBYHmKHH56MJESEcpj1KZuDpDOcEBYNRT0JQNnGwEw@mail.gmail.com>
	<56E298F0.50200@konsulko.com>
	<CAJTo0LbqsdrFP4B4t3A8MCRifJDKtXd9oZXWLHGYwJd4D7C2nQ@mail.gmail.com>
From: Leon Anavi <leon.anavi@konsulko.com>
Message-ID: <56E29F61.7040409@konsulko.com>
Date: Fri, 11 Mar 2016 12:35:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbqsdrFP4B4t3A8MCRifJDKtXd9oZXWLHGYwJd4D7C2nQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Nettle from release Fido fails to build
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
X-List-Received-Date: Fri, 11 Mar 2016 10:35:19 -0000
Content-Type: multipart/alternative;
	boundary="------------080701040503020502040503"

--------------080701040503020502040503
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Ross,

On 11.03.2016 12:20, Burton, Ross wrote:
>
> On 11 March 2016 at 10:07, Leon Anavi <leon.anavi@konsulko.com 
> <mailto:leon.anavi@konsulko.com>> wrote:
>
>     OK, thank you for the feedback. I will wait for the fix in the
>     Poky repository.
>
>
> Obviously you can apply the fix locally until it ends up in a release 
> branch.  Hooray git!
>
Yes, of course but in my particular case it will be more convenient just 
to use the commit prior the existing in Fido wrong patches for nettle.

Thanks, Leon
> Ross

-- 
Leon Anavi
Software Engineer
konsulko.com


--------------080701040503020502040503
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi Ross,<br>
    <br>
    <div class="moz-cite-prefix">On 11.03.2016 12:20, Burton, Ross
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAJTo0LbqsdrFP4B4t3A8MCRifJDKtXd9oZXWLHGYwJd4D7C2nQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 11 March 2016 at 10:07, Leon Anavi
            <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:leon.anavi@konsulko.com" target="_blank">leon.anavi@konsulko.com</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div text="#000000" bgcolor="#FFFFFF">OK, thank you for
                the feedback. I will wait for the fix in the Poky
                repository.<br>
              </div>
            </blockquote>
          </div>
          <br>
          Obviously you can apply the fix locally until it ends up in a
          release branch.  Hooray git!</div>
        <div class="gmail_extra"><br>
        </div>
      </div>
    </blockquote>
    Yes, of course but in my particular case it will be more convenient
    just to use the commit prior the existing in Fido wrong patches for
    nettle. <br>
    <br>
    Thanks, Leon<br>
    <blockquote
cite="mid:CAJTo0LbqsdrFP4B4t3A8MCRifJDKtXd9oZXWLHGYwJd4D7C2nQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Leon Anavi
Software Engineer
konsulko.com
</pre>
  </body>
</html>

--------------080701040503020502040503--
