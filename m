Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88C4AE00B52; Mon, 24 Oct 2016 16:23:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06B8DE00815
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 16:23:51 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id s8so17687203pfj.2
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 16:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=gNyVbICvmkJnh5b9yGbjPAgxvVu4YNpbhvqfSWnnKgE=;
	b=YpgmY3+ONQExK3A2XdxGSGqXRcZNjxSHPtjVt8Hu2fMF/afKlq05KwQr0X58c1SOvF
	yer62vZwOD3whzXZ1Z4CrvVTNaac48FCyXsFlvQ5HWL/ozxTf7lpt7yxQXlp1S3eiMsN
	D923XyQgIU7ri0ch3Q0vo4tizm92RoxHraWV0SYv6o/o15IWCTvn526rUhrr3iKijaIs
	BJ7Ckj4CLT39nRf+1Lfzx8m0+rtH32IF7vxc89gwi0N4x2qh5NbQExrgdJ6IFIjQJLXb
	Xv5iyuQubdNNzaIbTriwRN2tytXbDyzDicVK/8WDGuF35sTFdTJjousZ4qC19RDmyo2R
	/nNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=gNyVbICvmkJnh5b9yGbjPAgxvVu4YNpbhvqfSWnnKgE=;
	b=hu/TPFnVtrbBFa7d5RuVq01DPHQJ/a5ovMYYduCALl9awV4fAQhOumGzYZY4ahFBT2
	7GWV/UyTIKkA0mT95LI9kQTJpB+6yOBxl2RGmFoaK1mbobCxDWFoApjUrfE78GBGVfqH
	DZuKG5E2uOTfNAeMYErUpWS0GHDEpJG3M8UlHCMceMbc8RbYYZjJKNz5wv6u/fk67BcA
	lKyUpi4xOpeENLKdCiAPTaYHUrmljQXdctrcGWmfjRk6xTalJedthDiMqmItJ2oDYTEo
	OCPr5kwPrJSz+r0WeiPKfBlXYndfSdRC4e1mn7bRG5lF8wMQ7RrNxpCtF3HSy1b5Hcwb
	ZvOQ==
X-Gm-Message-State: ABUngvcmyU+T/qRAlWVyQZFkLgljEIF1QwLStWMkCj5UMaCOUgtzb//z6uWFkoQXkfvLcA==
X-Received: by 10.99.244.18 with SMTP id g18mr27776749pgi.129.1477351431003;
	Mon, 24 Oct 2016 16:23:51 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:d933:aa55:d4e7:2b39?
	([2601:202:4001:9ea0:d933:aa55:d4e7:2b39])
	by smtp.gmail.com with ESMTPSA id b66sm711712pfg.10.2016.10.24.16.23.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 24 Oct 2016 16:23:50 -0700 (PDT)
To: thomas.perrot@tupi.fr, Armin Kuster <akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
	<1476748950-21342-13-git-send-email-akuster808@gmail.com>
	<CAGXeWg=pNYyuqQoOmZw27N6sypeQxVQgCJFD+TBLanL0zSh+yQ@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <a8ecd8cb-2d9b-5984-07d8-28551f660a04@gmail.com>
Date: Mon, 24 Oct 2016 16:23:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <CAGXeWg=pNYyuqQoOmZw27N6sypeQxVQgCJFD+TBLanL0zSh+yQ@mail.gmail.com>
Cc: "linux-yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH 13/17] package-group: fix tpm package list
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
X-List-Received-Date: Mon, 24 Oct 2016 23:23:54 -0000
Content-Type: multipart/alternative;
	boundary="------------CB807C5433E0EAC0BEB5AA96"

--------------CB807C5433E0EAC0BEB5AA96
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 10/24/2016 02:43 AM, Thomas PERROT wrote:
> Hello,
>
> Would it not be more interestingto do two packages, one for the 
> TPMV1.2 support and a second for the TPMV2.0 support?
yes. thanks for the input.

Regards,
Armin
>
> Best regards,
> Thomas P.
>
>
> 	
>
>
> On Tue, Oct 18, 2016 at 2:02 AM, Armin Kuster <akuster808@gmail.com 
> <mailto:akuster808@gmail.com>> wrote:
>
>     Signed-off-by: Armin Kuster <akuster808@gmail.com
>     <mailto:akuster808@gmail.com>>
>     ---
>      recipes-security/packagegroup/packagegroup-core-security.bb
>     <http://packagegroup-core-security.bb> | 7 +++++--
>      1 file changed, 5 insertions(+), 2 deletions(-)
>
>     diff --git
>     a/recipes-security/packagegroup/packagegroup-core-security.bb
>     <http://packagegroup-core-security.bb>
>     b/recipes-security/packagegroup/packagegroup-core-security.bb
>     <http://packagegroup-core-security.bb>
>     index 8639acd..ae856c7 100644
>     --- a/recipes-security/packagegroup/packagegroup-core-security.bb
>     <http://packagegroup-core-security.bb>
>     +++ b/recipes-security/packagegroup/packagegroup-core-security.bb
>     <http://packagegroup-core-security.bb>
>     @@ -63,8 +63,11 @@ RDEPENDS_packagegroup-security-tpm = " \
>          tpm-tools \
>          trousers \
>          tpm2.0-tools \
>     -    tpm2.0-tss \
>     +    libtss2 \
>     +    resourcemgr \
>     +    libtctidevice \
>     +    libtctisocket \
>     +    resourcemgr \
>          libtpm \
>          swtpm \
>     -    tpm2simulator-native \
>          "
>     --
>     2.7.4
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
>


--------------CB807C5433E0EAC0BEB5AA96
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 10/24/2016 02:43 AM, Thomas PERROT
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAGXeWg=pNYyuqQoOmZw27N6sypeQxVQgCJFD+TBLanL0zSh+yQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div>Hello,<br>
            <br>
            <span tabindex="-1" id="gmail-result_box" class="gmail-"
              lang="en"><span><span class="gmail-short_text"
                  id="gmail-result_box" tabindex="-1" lang="en"><span>Would
                    it</span> <span>not be</span> <span>more
                    interesting</span></span></span><span></span> <span>to
                do two</span> <span>packages</span><span>, one for the</span>
              <span>TPMV1.2</span> <span>support</span> <span>and a
                second for</span> <span>the</span> <span>TPMV2.0</span>
              <span>support?<br>
              </span></span></div>
        </div>
      </div>
    </blockquote>
    yes. thanks for the input.<br>
    <br>
    Regards,<br>
    Armin<br>
    <blockquote
cite="mid:CAGXeWg=pNYyuqQoOmZw27N6sypeQxVQgCJFD+TBLanL0zSh+yQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div><span tabindex="-1" id="gmail-result_box" class="gmail-"
              lang="en"><span><br>
              </span></span></div>
          <span tabindex="-1" id="gmail-result_box" class="gmail-"
            lang="en"><span>Best regards,<br>
            </span></span></div>
        <span tabindex="-1" id="gmail-result_box" class="gmail-"
          lang="en"><span>Thomas P.<br>
          </span></span>
        <div class="gmail_extra"><br clear="all">
          <div>
            <div class="gmail_signature">
              <div dir="ltr">
                <div>
                  <div dir="ltr">
                    <div>
                      <div dir="ltr">
                        <div>
                          <div dir="ltr">
                            <div>
                              <div dir="ltr">
                                <div>
                                  <table
                                    style="color:rgb(88,88,90);font-family:verdana,arial;font-size:10px">
                                    <tbody>
                                      <tr>
                                        <td valign="top"><br>
                                        </td>
                                        <td
                                          style="padding-left:10px;border-left:1px
                                          solid rgb(0,153,153)"
                                          valign="top"><br>
                                        </td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <br>
          <div class="gmail_quote">On Tue, Oct 18, 2016 at 2:02 AM,
            Armin Kuster <span dir="ltr">&lt;<a moz-do-not-send="true"
                target="_blank" href="mailto:akuster808@gmail.com">akuster808@gmail.com</a>&gt;</span>
            wrote:<br>
            <blockquote style="margin:0px 0px 0px 0.8ex;border-left:1px
              solid rgb(204,204,204);padding-left:1ex"
              class="gmail_quote">Signed-off-by: Armin Kuster &lt;<a
                moz-do-not-send="true"
                href="mailto:akuster808@gmail.com">akuster808@gmail.com</a>&gt;<br>
              ---<br>
               recipes-security/packagegroup/<a moz-do-not-send="true"
                target="_blank" rel="noreferrer"
                href="http://packagegroup-core-security.bb"><wbr>packagegroup-core-security.bb</a>
              | 7 +++++--<br>
               1 file changed, 5 insertions(+), 2 deletions(-)<br>
              <br>
              diff --git a/recipes-security/<wbr>packagegroup/<a
                moz-do-not-send="true" target="_blank" rel="noreferrer"
                href="http://packagegroup-core-security.bb">packagegroup-<wbr>core-security.bb</a>
              b/recipes-security/<wbr>packagegroup/<a
                moz-do-not-send="true" target="_blank" rel="noreferrer"
                href="http://packagegroup-core-security.bb">packagegroup-<wbr>core-security.bb</a><br>
              index 8639acd..ae856c7 100644<br>
              --- a/recipes-security/<wbr>packagegroup/<a
                moz-do-not-send="true" target="_blank" rel="noreferrer"
                href="http://packagegroup-core-security.bb">packagegroup-<wbr>core-security.bb</a><br>
              +++ b/recipes-security/<wbr>packagegroup/<a
                moz-do-not-send="true" target="_blank" rel="noreferrer"
                href="http://packagegroup-core-security.bb">packagegroup-<wbr>core-security.bb</a><br>
              @@ -63,8 +63,11 @@ RDEPENDS_packagegroup-<wbr>security-tpm
              = " \<br>
                   tpm-tools \<br>
                   trousers \<br>
                   tpm2.0-tools \<br>
              -    tpm2.0-tss \<br>
              +    libtss2 \<br>
              +    resourcemgr \<br>
              +    libtctidevice \<br>
              +    libtctisocket \<br>
              +    resourcemgr \<br>
                   libtpm \<br>
                   swtpm \<br>
              -    tpm2simulator-native \<br>
                   "<br>
              <span class="gmail-HOEnZb"><font color="#888888">--<br>
                  2.7.4<br>
                  <br>
                  --<br>
                  ______________________________<wbr>_________________<br>
                  yocto mailing list<br>
                  <a moz-do-not-send="true"
                    href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                  <a moz-do-not-send="true" target="_blank"
                    rel="noreferrer"
                    href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br>
                </font></span></blockquote>
          </div>
          <br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------CB807C5433E0EAC0BEB5AA96--
