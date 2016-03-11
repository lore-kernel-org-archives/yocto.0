Return-Path: <leon.anavi@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E8E0E00CDC; Fri, 11 Mar 2016 02:07:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C96EAE00929
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 02:07:47 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id p65so11251450wmp.1
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 02:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=hgkHtnbPqRkeZCko7jJy77ULvVd6SBHP1/vBoukTqgU=;
	b=P0v1UsAULo+veoGaHUwHuiKshvtSa8qTEBYDJ4+maKwNnRGZDV9EfvlEsBXxcbShIV
	0KvXl6A/fnbIf8ftJWSqhmruYxzCrKtIJAHQWA/ezC8WvHi8X9sA96P/jbue/qVPYgLt
	UKZiclSZhvxk5zWgWJj/EJboaIx+FVnAo5mVY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=hgkHtnbPqRkeZCko7jJy77ULvVd6SBHP1/vBoukTqgU=;
	b=gtU6KRIYWxIc8MudStgvveu/TjYHKge5Fq4eJWUrltEJmOjFWv2+TWGDNFddHoERx3
	bQ5iHIlJ2NF+yMvNlwKoFmC07JbUXGW1/41u3xjqxuKpirLgjJQL599VGfMbx375f1YM
	4dLHNFMMhu4JCKB22YkdNVWwgDw5zXXRNMyWHOM5GYKNhA+javuKnXjFDRr8LsoUCK/o
	uBeWaKKxoBQTPuNp3HD+pgZud4w43ibNVi/7QQfx+DlaL0RqImbid633h+AOyX52fYjQ
	0ykO69SDfbGxn1cq4giRPd+x8rt6MlYrUsM4fVgXB7aEK90xZcH76Toz+IkuodHTeqbc
	CI2Q==
X-Gm-Message-State: AD7BkJKjthG/LjygaT/GPn3DJRLLnTcNlIm4lMbFwrqqEKHUobAfjAYqGgAoAf5Yi/imVA==
X-Received: by 10.194.71.46 with SMTP id r14mr9680556wju.100.1457690866006;
	Fri, 11 Mar 2016 02:07:46 -0800 (PST)
Received: from [192.168.4.190] ([5.53.209.92])
	by smtp.googlemail.com with ESMTPSA id
	d2sm7637572wjf.28.2016.03.11.02.07.45
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 11 Mar 2016 02:07:45 -0800 (PST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <56E293BD.1080009@konsulko.com>
	<CAJTo0LZDKBYHmKHH56MJESEcpj1KZuDpDOcEBYNRT0JQNnGwEw@mail.gmail.com>
From: Leon Anavi <leon.anavi@konsulko.com>
Message-ID: <56E298F0.50200@konsulko.com>
Date: Fri, 11 Mar 2016 12:07:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZDKBYHmKHH56MJESEcpj1KZuDpDOcEBYNRT0JQNnGwEw@mail.gmail.com>
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
X-List-Received-Date: Fri, 11 Mar 2016 10:07:51 -0000
Content-Type: multipart/alternative;
	boundary="------------010308030202090509030202"

--------------010308030202090509030202
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Ross,

On 11.03.2016 11:50, Burton, Ross wrote:
>
> On 11 March 2016 at 09:45, Leon Anavi <leon.anavi@konsulko.com 
> <mailto:leon.anavi@konsulko.com>> wrote:
>
>
>     Yesterday I noticed that the build of recipe nettle 2.7.1 from
>     release Fido fails:
>     https://gist.github.com/leon-anavi/dfd3afab567a9dc9fa2f
>
>
> Theres a patch from a few days ago on this list to fix the issue: 
> http://patchwork.openembedded.org/patch/117355/.
>
OK, thank you for the feedback. I will wait for the fix in the Poky 
repository.

Best regards, Leon

> Ross

-- 
Leon Anavi
Software Engineer
konsulko.com


--------------010308030202090509030202
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi Ross,<br>
    <br>
    <div class="moz-cite-prefix">On 11.03.2016 11:50, Burton, Ross
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAJTo0LZDKBYHmKHH56MJESEcpj1KZuDpDOcEBYNRT0JQNnGwEw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 11 March 2016 at 09:45, Leon Anavi
            <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:leon.anavi@konsulko.com" target="_blank">leon.anavi@konsulko.com</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><br>
              Yesterday I noticed that the build of recipe nettle 2.7.1
              from release Fido fails:<br>
              <a moz-do-not-send="true"
                href="https://gist.github.com/leon-anavi/dfd3afab567a9dc9fa2f"
                rel="noreferrer" target="_blank">https://gist.github.com/leon-anavi/dfd3afab567a9dc9fa2f</a><br>
            </blockquote>
          </div>
          <br>
          Theres a patch from a few days ago on this list to fix the
          issue: <a moz-do-not-send="true"
            href="http://patchwork.openembedded.org/patch/117355/">http://patchwork.openembedded.org/patch/117355/</a>.</div>
        <div class="gmail_extra"><br>
        </div>
      </div>
    </blockquote>
    OK, thank you for the feedback. I will wait for the fix in the Poky
    repository.<br>
    <br>
    Best regards, Leon<br>
    <br>
    <blockquote
cite="mid:CAJTo0LZDKBYHmKHH56MJESEcpj1KZuDpDOcEBYNRT0JQNnGwEw@mail.gmail.com"
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

--------------010308030202090509030202--
