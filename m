Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3604AE00CA3; Tue, 15 Aug 2017 05:35:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 236DDE00A9C
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 05:35:05 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id y129so1305789pgy.3
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 05:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=xElyRFFvwfVAUoWS//4QLaKFQrheJlUI/UBsUJLYbD4=;
	b=NqKwsUmJdvOS3M8E+/ewlYfEXXw1+TfNx0jKWlkzhVTXo9B6PXtbf4aiPL+w/tQdAa
	4Tat2++lIEOaIP1FOKhCkI+yGa5wYhrUtNTerkexq3i840T2wYAl/BR5r5setF2uOAae
	u9Doxx/tbdVTwRaHpRCAw49K94gao9cbShu8oOd+iTQ0jBbvrrI0YFTx0FcDhklD4ra/
	Qy8dZScDTwRkQtvOKddhrBZxpKtFyL2PRP0jaXj7goKqkZWWsDf9L7JJfShQRl/a1Yty
	6aQ91AZTnALrpfDuevAGI6uG2JdTbjoJvezS1l++Ph7LrV1dcQxvpaXZNaIu4poMGfYM
	uX/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=xElyRFFvwfVAUoWS//4QLaKFQrheJlUI/UBsUJLYbD4=;
	b=rJTMy8LXQO6/UDaK4NuartlmMQSaq0mZWe1FIxDNiGBz79y8dWliO2qSt4sjZpvBRH
	kFbB3QYwnXOxORWi9ealrrg7yLu1dX+XmLeECx7F6TUZFn+cl1Td0EvSZwI/YpDtrs2h
	/Cbz9S/nWz53qWpwd0cntL10Dil7aN4XCq9lCyAVkTSB1AUGXoLLcL9hDM/xKzLYutDf
	V9OOSPizP5/24WAI6gw00Q0UHRd/XhLUZoEQOcORbVInzokThl6ek+P7i1lgn/6MpC/k
	0ovR0yPOyWVJcHB7H8oLoTX5boTpMSLbNeQyBSzPqKFwKZdQ/0YSabkLx3GZCDt0K0Ou
	IQ4g==
X-Gm-Message-State: AHYfb5ggpY2Isj1W2Wdu0x7S6d6O9tPvoRFgmSJ5NQ9tWPu8442ZgJ+f
	KVNs33sekBuzoFUbF7U=
X-Received: by 10.99.44.23 with SMTP id s23mr26684646pgs.399.1502800505181;
	Tue, 15 Aug 2017 05:35:05 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:7ae4:ff:fe2d:ca29?
	([2001:8003:804a:b500:7ae4:ff:fe2d:ca29])
	by smtp.gmail.com with ESMTPSA id
	y4sm19725919pfd.116.2017.08.15.05.35.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Aug 2017 05:35:04 -0700 (PDT)
To: Martin Jansa <martin.jansa@gmail.com>, Khem Raj <raj.khem@gmail.com>
References: <a94a076e-50a3-bf78-e628-15128682128f@gmail.com>
	<CAMKF1sq9gu9fHDARcYkwH36ZBp_9OtaF_FfDHLz5CyThdvxq-A@mail.gmail.com>
	<CA+chaQdZXaBg+ykJCHH+9gcW6gmze3VL_ifHBHokj8TBhb+8NQ@mail.gmail.com>
From: Riko <antonius.riko@gmail.com>
Message-ID: <c8358f28-0cec-cd19-d56e-372173b6a828@gmail.com>
Date: Tue, 15 Aug 2017 20:35:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CA+chaQdZXaBg+ykJCHH+9gcW6gmze3VL_ifHBHokj8TBhb+8NQ@mail.gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: How can I use PREFERRED_VERSION_ ?
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
X-List-Received-Date: Tue, 15 Aug 2017 12:35:07 -0000
Content-Type: multipart/alternative;
	boundary="------------2CC2968B9A18FC14A7F4DCD9"
Content-Language: en-US

--------------2CC2968B9A18FC14A7F4DCD9
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

is openembedded-core layer equal to meta-openembedded layer ?

this conf was working before :

BBLAYERS ?= " \
   /home/bianchi/poky/meta \
   /home/bianchi/poky/meta-poky \
   /home/bianchi/poky/meta-yocto-bsp \
   /home/bianchi/poky/openembedded-core \
   /home/bianchi77/poky/meta-openembedded \
   /home/bianchi77/poky/meta-openembedded/meta-oe \
   /home/bianchi77/poky/meta-openembedded/meta-xfce \
   /home/bianchi77/poky/meta-openembedded/meta-gnome \
   /home/bianchi77/poky/meta-openembedded/meta-python \
   /home/bianchi77/poky/meta-openembedded/meta-multimedia \
   /home/bianchi77/poky/meta-openembedded/meta-networking \


On 15/08/17 17:20, Martin Jansa wrote:
> and you should start by not including 2 different versions of 
> openembedded-core/meta in your builds.
>
> Then you won't need PREFERRED_VERSION for openssl and the issue with 
> wic.vmdk you reported elsewhere will also probably disappear.
>
> On Tue, Aug 15, 2017 at 7:31 AM, Khem Raj <raj.khem@gmail.com 
> <mailto:raj.khem@gmail.com>> wrote:
>
>     On Mon, Aug 14, 2017 at 7:15 PM, Riko <antonius.riko@gmail.com
>     <mailto:antonius.riko@gmail.com>> wrote:
>     > Dear Yocto Team Members,
>     >
>     > How can I use PREFERRED_VERSION_ ?
>     >
>     >
>
>     read through
>     http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PREFERRED_VERSION
>     <http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PREFERRED_VERSION>
>
>     > ERROR: Multiple versions of openssl are due to be built
>     >
>     (/home/bianchi/poky/openembedded-core/meta/recipes-connectivity/openssl/openssl_1.1.0f.bb
>     <http://openssl_1.1.0f.bb>
>     >
>     /home/bianchi/poky/meta/recipes-connectivity/openssl/openssl_1.0.2k.bb
>     <http://openssl_1.0.2k.bb>).
>     > Only one version of a given PN should be built in any given
>     build. You
>     > likely need to set PREFERRED_VERSION_openssl to select the
>     correct version
>     > or don't depend on multiple versions.
>     >
>     >
>     > Regards,
>     >
>     > Riko
>     >
>     > --
>     > _______________________________________________
>     > yocto mailing list
>     > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     > https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>
>


--------------2CC2968B9A18FC14A7F4DCD9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>is openembedded-core layer equal to meta-openembedded layer ?</p>
    <p>this conf was working before :</p>
    <p>BBLAYERS ?= " \<br>
        /home/bianchi/poky/meta \<br>
        /home/bianchi/poky/meta-poky \<br>
        /home/bianchi/poky/meta-yocto-bsp \<br>
        /home/bianchi/poky/openembedded-core \<br>
        /home/bianchi77/poky/meta-openembedded \<br>
        /home/bianchi77/poky/meta-openembedded/meta-oe \<br>
        /home/bianchi77/poky/meta-openembedded/meta-xfce \<br>
        /home/bianchi77/poky/meta-openembedded/meta-gnome \<br>
        /home/bianchi77/poky/meta-openembedded/meta-python \<br>
        /home/bianchi77/poky/meta-openembedded/meta-multimedia \<br>
        /home/bianchi77/poky/meta-openembedded/meta-networking \<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 15/08/17 17:20, Martin Jansa wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CA+chaQdZXaBg+ykJCHH+9gcW6gmze3VL_ifHBHokj8TBhb+8NQ@mail.gmail.com">
      <div dir="ltr">and you should start by not including 2 different
        versions of openembedded-core/meta in your builds.
        <div><br>
        </div>
        <div>Then you won't need PREFERRED_VERSION for openssl and the
          issue with wic.vmdk you reported elsewhere will also probably
          disappear.</div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On Tue, Aug 15, 2017 at 7:31 AM, Khem
          Raj <span dir="ltr">&lt;<a href="mailto:raj.khem@gmail.com"
              target="_blank" moz-do-not-send="true">raj.khem@gmail.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex"><span
              class="">On Mon, Aug 14, 2017 at 7:15 PM, Riko &lt;<a
                href="mailto:antonius.riko@gmail.com"
                moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;
              wrote:<br>
              &gt; Dear Yocto Team Members,<br>
              &gt;<br>
              &gt; How can I use PREFERRED_VERSION_ ?<br>
              &gt;<br>
              &gt;<br>
              <br>
            </span>read through<br>
            <a
href="http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PREFERRED_VERSION"
              rel="noreferrer" target="_blank" moz-do-not-send="true">http://www.yoctoproject.org/<wbr>docs/latest/ref-manual/ref-<wbr>manual.html#var-PREFERRED_<wbr>VERSION</a><br>
            <div class="HOEnZb">
              <div class="h5"><br>
                &gt; ERROR: Multiple versions of openssl are due to be
                built<br>
                &gt; (/home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-connectivity/openssl/<a
                  href="http://openssl_1.1.0f.bb" rel="noreferrer"
                  target="_blank" moz-do-not-send="true">o<wbr>penssl_1.1.0f.bb</a><br>
                &gt; /home/bianchi/poky/meta/<wbr>recipes-connectivity/openssl/<a
                  href="http://openssl_1.0.2k.bb" rel="noreferrer"
                  target="_blank" moz-do-not-send="true">o<wbr>penssl_1.0.2k.bb</a>).<br>
                &gt; Only one version of a given PN should be built in
                any given build. You<br>
                &gt; likely need to set PREFERRED_VERSION_openssl to
                select the correct version<br>
                &gt; or don't depend on multiple versions.<br>
                &gt;<br>
                &gt;<br>
                &gt; Regards,<br>
                &gt;<br>
                &gt; Riko<br>
                &gt;<br>
                &gt; --<br>
                &gt; ______________________________<wbr>_________________<br>
                &gt; yocto mailing list<br>
                &gt; <a href="mailto:yocto@yoctoproject.org"
                  moz-do-not-send="true">yocto@yoctoproject.org</a><br>
                &gt; <a
                  href="https://lists.yoctoproject.org/listinfo/yocto"
                  rel="noreferrer" target="_blank"
                  moz-do-not-send="true">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br>
                --<br>
                ______________________________<wbr>_________________<br>
                yocto mailing list<br>
                <a href="mailto:yocto@yoctoproject.org"
                  moz-do-not-send="true">yocto@yoctoproject.org</a><br>
                <a href="https://lists.yoctoproject.org/listinfo/yocto"
                  rel="noreferrer" target="_blank"
                  moz-do-not-send="true">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br>
              </div>
            </div>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------2CC2968B9A18FC14A7F4DCD9--
