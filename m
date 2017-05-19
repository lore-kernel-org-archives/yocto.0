Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1460DE00B58; Thu, 18 May 2017 23:19:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB03BE00B47
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 23:19:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v4J6JGP6005406
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 18 May 2017 23:19:16 -0700 (PDT)
Received: from [128.224.162.185] (128.224.162.185) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 18 May 2017 23:19:16 -0700
To: Christopher Larson <kergoth@gmail.com>
References: <20170518072237.9271-1-kai.kang@windriver.com>
	<20170518072237.9271-2-kai.kang@windriver.com>
	<CABcZANn+ARi=zuBQ61D7TkLWd++u0f-RVgsFzXz-C6OxGvnKzg@mail.gmail.com>
From: Kang Kai <Kai.Kang@windriver.com>
Message-ID: <96b6d7e1-db29-0f80-a15c-070cb68b5003@windriver.com>
Date: Fri, 19 May 2017 14:16:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CABcZANn+ARi=zuBQ61D7TkLWd++u0f-RVgsFzXz-C6OxGvnKzg@mail.gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-security] [PATCH] mtree: add recipe
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
X-List-Received-Date: Fri, 19 May 2017 06:19:23 -0000
Content-Type: multipart/alternative;
	boundary="------------EE9BCADC1A07D6785526B0BF"
Content-Language: en-US

--------------EE9BCADC1A07D6785526B0BF
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2017年05月18日 23:24, Christopher Larson wrote:
>
> On Thu, May 18, 2017 at 12:22 AM, <kai.kang@windriver.com 
> <mailto:kai.kang@windriver.com>> wrote:
>
>     From: Kai Kang <kai.kang@windriver.com
>     <mailto:kai.kang@windriver.com>>
>
>     Add recipe mtree port from BSD. Add a patch to handle null return
>     from getlogin.
>
>     Signed-off-by: Kai Kang <kai.kang@windriver.com
>     <mailto:kai.kang@windriver.com>>
>
>
> Exactly what layer are you aiming for this to go to? The list you sent 
> it to (yocto) doesn’t imply any particular layer..
> -- 
> Christopher Larson
> kergoth at gmail dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Senior Software Engineer, Mentor Graphics

Sorry, only add the layer info in the cover letter. The pacakge is added 
to  layer meta-security.

Thanks.

-- 
Regards,
Neil | Kai Kang


--------------EE9BCADC1A07D6785526B0BF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 2017年05月18日 23:24, Christopher
      Larson wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CABcZANn+ARi=zuBQ61D7TkLWd++u0f-RVgsFzXz-C6OxGvnKzg@mail.gmail.com">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On Thu, May 18, 2017 at 12:22 AM, <span
              dir="ltr">&lt;<a href="mailto:kai.kang@windriver.com"
                target="_blank" moz-do-not-send="true">kai.kang@windriver.com</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div id=":1hg" class="a3s aXjCH m15c1a744903223bb">From:
                Kai Kang &lt;<a href="mailto:kai.kang@windriver.com"
                  moz-do-not-send="true">kai.kang@windriver.com</a>&gt;<br>
                <br>
                Add recipe mtree port from BSD. Add a patch to handle
                null return<br>
                from getlogin.<br>
                <br>
                Signed-off-by: Kai Kang &lt;<a
                  href="mailto:kai.kang@windriver.com"
                  moz-do-not-send="true">kai.kang@windriver.com</a>&gt;</div>
            </blockquote>
          </div>
          <br>
          Exactly what layer are you aiming for this to go to? The list
          you sent it to (yocto) doesn’t imply any particular layer..<br>
          -- <br>
          <div class="gmail_signature" data-smartmail="gmail_signature">
            <div dir="ltr">
              <div>
                <div dir="ltr">Christopher Larson<br>
                  kergoth at gmail dot com<br>
                  Founder - BitBake, OpenEmbedded, OpenZaurus<br>
                  Senior Software Engineer, Mentor Graphics</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <p><font size="+1">Sorry, only add the layer info in the cover
        letter. The pacakge is added to  layer meta-security.</font></p>
    <p><font size="+1">Thanks.<br>
      </font></p>
    <pre class="moz-signature" cols="72">-- 
Regards,
Neil | Kai Kang</pre>
  </body>
</html>

--------------EE9BCADC1A07D6785526B0BF--
