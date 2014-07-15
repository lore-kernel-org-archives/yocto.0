Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98657E00547; Tue, 15 Jul 2014 11:12:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67E45E004FF
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 11:11:54 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id h3so3213081igd.2
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 11:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=pf2blsPJnTVWzIOG+kkoxY3U1RMFSEssxdpRra+uvc4=;
	b=C0xjvVjCWi/dvWYOX+rjL/Swk0aIOdmf3l7jaien2rCeUK9ru+0lD3eeu0ykzoimfy
	ml68siNUKhzCq72QaTz2I+Oe5rXFLh/t+AjTui7q4JOfPrQx7fvrYTFHx/yDnEtU4Xrd
	3fgEVJgn1/wB+6u5p2ijx+1tkOMJDagXRwfNNMU6XF3d06cJqqXGPrbxBX0rwCGW1WYv
	5byGEwyCfDUt8GGuGOKj0u8FFvqwnLF8hFsCHQajK9buWKwOibETOnNoGGyMR2RGk/Ee
	H3nyvoAcp/P2UoQAyr/RRMKssIxQa9INvz7URz5gG/SDLSy1G0lacrnfKh7aArnfBxzS
	gHFg==
MIME-Version: 1.0
X-Received: by 10.50.13.102 with SMTP id g6mr8954101igc.20.1405447914080; Tue,
	15 Jul 2014 11:11:54 -0700 (PDT)
Received: by 10.50.78.105 with HTTP; Tue, 15 Jul 2014 11:11:54 -0700 (PDT)
Received: by 10.50.78.105 with HTTP; Tue, 15 Jul 2014 11:11:54 -0700 (PDT)
In-Reply-To: <33115ABC4887814E8A92A08FBC93416B23BF65B7@IRSMSX103.ger.corp.intel.com>
References: <33115ABC4887814E8A92A08FBC93416B23BF65B7@IRSMSX103.ger.corp.intel.com>
Date: Tue, 15 Jul 2014 11:11:54 -0700
Message-ID: <CAMKF1spMhRZ=EZSDghOA=rxdL8nLmrrxhmyEmXwf2Ly5OqzHSQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: CorneliuX Stoicescu <corneliux.stoicescu@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Documentation for test-remote-image script
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
X-List-Received-Date: Tue, 15 Jul 2014 18:12:02 -0000
Content-Type: multipart/alternative; boundary=089e013c66d6ab4e8204fe3f5727

--089e013c66d6ab4e8204fe3f5727
Content-Type: text/plain; charset=UTF-8

On Jul 15, 2014 6:17 AM, "Stoicescu, CorneliuX" <
corneliux.stoicescu@intel.com> wrote:
>
> Hello,
>
> Here is the documentation for the test-remote-image script. This was one
of the resulted changes derived from feature
https://bugzilla.yoctoproject.org/show_bug.cgi?id=6254 .
>
> If you think more documentation is needed, please reply so I can add to
the wiki :)
>

it would be nice to explain the cmdline options of this script anf there
are some typos
> Regards,
> Corneliu
> Yocto QA
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--089e013c66d6ab4e8204fe3f5727
Content-Type: text/html; charset=UTF-8

<p dir="ltr"><br>
On Jul 15, 2014 6:17 AM, &quot;Stoicescu, CorneliuX&quot; &lt;<a href="mailto:corneliux.stoicescu@intel.com">corneliux.stoicescu@intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; Here is the documentation for the test-remote-image script. This was one of the resulted changes derived from feature <a href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=6254">https://bugzilla.yoctoproject.org/show_bug.cgi?id=6254</a> .<br>

&gt;<br>
&gt; If you think more documentation is needed, please reply so I can add to the wiki :)<br>
&gt;</p>
<p dir="ltr">it would be nice to explain the cmdline options of this script anf there are some typos<br>
&gt; Regards,<br>
&gt; Corneliu<br>
&gt; Yocto QA<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt; <a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</p>

--089e013c66d6ab4e8204fe3f5727--
