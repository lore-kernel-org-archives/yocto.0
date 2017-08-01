Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7551FE00C5F; Mon, 31 Jul 2017 20:13:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D38CE00C2E
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 20:13:17 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id c65so337847pfl.0
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 20:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=ofwmnTfjPO03gfRSc85DsDUhIo/0yP6LbeIM1Mjps1U=;
	b=P5dA2YQ7UqVBUhVr56WivcrFIN3RyK33UtJZ+xC+UtnNzD8RJgS9jNnVQWHTOLtV+n
	ILTEukqdpw6MbTID4O928tsBhBOrv43EwdzFOW3tDpaJHWGnxu06vUDINhlbpT+lFgtf
	RZebNqw9N5OLxs58a8kiVG3jH1XOS+ogHKvJfgVA1oyVf/ll0zevJdsgis1CTXi06HPa
	konXhX3eRsQnD8R34k5mZR49sg4IivGwAEXRmWK8cQEGshKjzIonvxh44LkSWTdicGOF
	UiFBsxoEZbCZrBstehhn7gbk5MZ+tbq/qA6fui+RleDLdtmMdH8i4p0tUDhBSfH6+GtY
	jpfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=ofwmnTfjPO03gfRSc85DsDUhIo/0yP6LbeIM1Mjps1U=;
	b=Bh8bDFfgLWq/TAQ+F0nuJz0GFRS8jCc9F/KT5mo/+mHxZeJwX5T0WGaQiBgailtYCC
	+GQv64Com7FsLEHgWHmQU4jWOn52+SXly+R4C/qvsdcOM0c5W1/a3y8l8cjZk7Bo6tn4
	Ce3dN9v1Jp0QLnJRSC2xEgUVYixfgPUS9cTB79D1u9RZ2OUI++HHb1Vk5qDw4EfHe3gL
	4gSXpkcmYOMxky9mgxCqzSWdMHF9PR8LCbeHafgawj7rZ3rRcLSfG7ffBCAhHtJ15O6h
	ermZE4Vr5+j019bqCVDN0C/te2Qp8wbk7v+tKoEKLNvJ/QtcvvHV5iKZgn5yl9Yw3g5l
	DNVg==
X-Gm-Message-State: AIVw110xEjRrMHmEYfvPXwSNuyeWaFqOOd3OChdN05aY8kGfrqOX3ae0
	vWztTkYsqVw3rZX6
X-Received: by 10.84.215.195 with SMTP id g3mr19933397plj.437.1501557197274;
	Mon, 31 Jul 2017 20:13:17 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:d85b:50a9:f69e:30b?
	([2001:8003:804a:b500:d85b:50a9:f69e:30b])
	by smtp.gmail.com with ESMTPSA id
	v9sm32046615pgo.39.2017.07.31.20.13.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Jul 2017 20:13:16 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
	<8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
	<c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
	<337a7f6c-0ca1-6505-f5ea-16c355c84f72@gmail.com>
	<CAJTo0LbxgW4Gwjbai-MAaifdFuHKz4rLcf3nTNHuTBX1WBkuEw@mail.gmail.com>
	<CAByQQ_r007RG__TP-XNaWxoH+vBCsOESzAcY2FQJUj+X=UE5eg@mail.gmail.com>
	<CAJTo0LZAwKLB6ZRTw79B9VfPz+ra=CAoJHn8Bzz9Z3ra=jzq3g@mail.gmail.com>
	<CAByQQ_q0mkG2BfK3FGBZgXOSJxzkUAORCZPC5mYiAQ2oB5qgFw@mail.gmail.com>
	<CAJTo0LbsyCZmjhBCHjnQRsedmNc7__KzGi5vhPjh328cXedsKA@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <e36f15a3-7669-9f11-28e1-33f70d30862d@gmail.com>
Date: Tue, 1 Aug 2017 11:13:12 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbsyCZmjhBCHjnQRsedmNc7__KzGi5vhPjh328cXedsKA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DEBUG: automake-native: class native found in blacklist, disable icecc ?
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
X-List-Received-Date: Tue, 01 Aug 2017 03:13:18 -0000
Content-Type: multipart/alternative;
	boundary="------------85FDFA24A9D6CC340065FA1B"
Content-Language: en-US

--------------85FDFA24A9D6CC340065FA1B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Yocto Team Members,

Here's what I got :

=================

#:~/poky$ git branch
   master
* pyro


How can I fix that problem with modern perl in help2man ?

Thanks


On 31/07/17 21:26, Burton, Ross wrote:
> Then the branch you checked out.  git branch will tell you.
>
> Ross
>
> On 31 July 2017 at 14:17, Riko Ho <antonius.riko@gmail.com 
> <mailto:antonius.riko@gmail.com>> wrote:
>
>     Git clone ...
>
>     On Jul 31, 2017 9:16 PM, "Burton, Ross" <ross.burton@intel.com
>     <mailto:ross.burton@intel.com>> wrote:
>
>         How did you get poky?
>
>         Ross
>
>         On 31 July 2017 at 14:14, Riko Ho <antonius.riko@gmail.com
>         <mailto:antonius.riko@gmail.com>> wrote:
>
>             How can I see my branch?
>
>             On Jul 31, 2017 9:12 PM, "Burton, Ross"
>             <ross.burton@intel.com <mailto:ross.burton@intel.com>> wrote:
>
>                 On 31 July 2017 at 03:33, Riko Ho
>                 <antonius.riko@gmail.com
>                 <mailto:antonius.riko@gmail.com>> wrote:
>
>                     Is my auto make disabled with icecc ?
>
>                     How to make it enable ? thanks.
>
>
>                 That's just a debug message.
>
>                 > | help2man: can't get `--help' info from automake-1.15
>                 > | Try `--no-discard-stderr' if option outputs to stderr
>                 > | Makefile:3687: recipe for target
>                 'doc/automake-1.15.1' failed
>
>
>                 That's the error your hitting.
>
>                 I think you need to update to the latest commit for
>                 the branch you're on, there was a problem with modern
>                 perl in help2man.  What release/branch are you using?
>
>                 Ross
>
>
>

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------85FDFA24A9D6CC340065FA1B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Dear Yocto Team Members,</p>
    <p>Here's what I got :</p>
    <p>=================<br>
    </p>
    <p>#:~/poky$ git branch<br>
        master<br>
      * pyro</p>
    <p><br>
    </p>
    <p>How can I fix that problem with modern perl in help2man ?</p>
    <p>Thanks<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 31/07/17 21:26, Burton, Ross wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJTo0LbsyCZmjhBCHjnQRsedmNc7__KzGi5vhPjh328cXedsKA@mail.gmail.com">
      <div dir="ltr">Then the branch you checked out.  git branch will
        tell you.
        <div><br>
        </div>
        <div>Ross</div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On 31 July 2017 at 14:17, Riko Ho <span
            dir="ltr">&lt;<a href="mailto:antonius.riko@gmail.com"
              target="_blank" moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <p dir="ltr">Git clone ...</p>
            <div class="HOEnZb">
              <div class="h5">
                <div class="gmail_quote">On Jul 31, 2017 9:16 PM,
                  "Burton, Ross" &lt;<a
                    href="mailto:ross.burton@intel.com" target="_blank"
                    moz-do-not-send="true">ross.burton@intel.com</a>&gt;
                  wrote:<br type="attribution">
                  <blockquote class="gmail_quote" style="margin:0 0 0
                    .8ex;border-left:1px #ccc solid;padding-left:1ex">
                    <div dir="ltr">How did you get poky?
                      <div><br>
                      </div>
                      <div>Ross</div>
                    </div>
                    <div class="gmail_extra"><br>
                      <div class="gmail_quote">On 31 July 2017 at 14:14,
                        Riko Ho <span dir="ltr">&lt;<a
                            href="mailto:antonius.riko@gmail.com"
                            target="_blank" moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;</span>
                        wrote:<br>
                        <blockquote class="gmail_quote" style="margin:0
                          0 0 .8ex;border-left:1px #ccc
                          solid;padding-left:1ex">
                          <p dir="ltr">How can I see my branch?</p>
                          <div
                            class="m_2019242909827686211m_-4777739250393309465HOEnZb">
                            <div
                              class="m_2019242909827686211m_-4777739250393309465h5">
                              <div class="gmail_quote">On Jul 31, 2017
                                9:12 PM, "Burton, Ross" &lt;<a
                                  href="mailto:ross.burton@intel.com"
                                  target="_blank" moz-do-not-send="true">ross.burton@intel.com</a>&gt;
                                wrote:<br type="attribution">
                                <blockquote class="gmail_quote"
                                  style="margin:0 0 0
                                  .8ex;border-left:1px #ccc
                                  solid;padding-left:1ex">
                                  <div dir="ltr">On 31 July 2017 at
                                    03:33, Riko Ho <span dir="ltr">&lt;<a
href="mailto:antonius.riko@gmail.com" target="_blank"
                                        moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;</span>
                                    wrote:
                                    <div class="gmail_extra">
                                      <div class="gmail_quote">
                                        <blockquote class="gmail_quote"
                                          style="margin:0 0 0
                                          .8ex;border-left:1px #ccc
                                          solid;padding-left:1ex">
                                          <div text="#000000"
                                            bgcolor="#FFFFFF">
                                            <p>Is my auto make disabled
                                              with icecc ?</p>
                                            <p>How to make it enable ?
                                              thanks.<br>
                                            </p>
                                          </div>
                                        </blockquote>
                                        <div><br>
                                        </div>
                                        <div>That's just a debug
                                          message. <br>
                                          <br>
                                          &gt; | help2man: can't get
                                          `--help' info from
                                          automake-1.15<br>
                                          &gt; | Try
                                          `--no-discard-stderr' if
                                          option outputs to stderr<br>
                                          &gt; | Makefile:3687: recipe
                                          for target
                                          'doc/automake-1.15.1' failed<br>
                                          <br>
                                          <br>
                                          That's the error your hitting.</div>
                                        <div><br>
                                        </div>
                                        <div>I think you need to update
                                          to the latest commit for the
                                          branch you're on, there was a
                                          problem with modern perl in
                                          help2man.  What release/branch
                                          are you using?</div>
                                        <div><br>
                                        </div>
                                        <div>Ross</div>
                                      </div>
                                    </div>
                                  </div>
                                </blockquote>
                              </div>
                            </div>
                          </div>
                        </blockquote>
                      </div>
                      <br>
                    </div>
                  </blockquote>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          Kind regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------85FDFA24A9D6CC340065FA1B--
