Return-Path: <bartosz.woronicz@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12F74E00A7D; Thu,  4 Feb 2016 03:03:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [93.183.12.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from demumfd002.nsn-inter.net (demumfd002.nsn-inter.net
	[93.183.12.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9115AE00A7D
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 03:03:15 -0800 (PST)
Received: from demuprx017.emea.nsn-intra.net ([10.150.129.56])
	by demumfd002.nsn-inter.net (8.15.2/8.15.2) with ESMTPS id
	u14B392h021235
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Thu, 4 Feb 2016 11:03:10 GMT
Received: from [10.154.187.104] ([10.154.187.104])
	by demuprx017.emea.nsn-intra.net (8.12.11.20060308/8.12.11) with ESMTP
	id u14B39Tc030087; Thu, 4 Feb 2016 12:03:09 +0100
To: "EXT Burton, Ross" <ross.burton@intel.com>
References: <56B1D2D1.5010508@nokia.com>
	<CAJTo0LayhHP7wbcbLf7TOu8e=6-ERg90VdJu_Av9EfmBBFEmAg@mail.gmail.com>
	<56B20BA1.2060004@nokia.com>
	<CAJTo0LZFBBoAzRd5wGzg2h+yxR=vPNKBavwe=hhziNYvMXpDsA@mail.gmail.com>
From: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Message-ID: <56B32FED.7060404@nokia.com>
Date: Thu, 4 Feb 2016 12:03:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZFBBoAzRd5wGzg2h+yxR=vPNKBavwe=hhziNYvMXpDsA@mail.gmail.com>
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for
	further information)
X-purgate-size: 2533
X-purgate-ID: 151667::1454583790-0000462D-4C532418/0/0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Where should I append Yocto bitbake task to create work folder symlink ?
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
X-List-Received-Date: Thu, 04 Feb 2016 11:03:20 -0000
Content-Type: multipart/alternative;
	boundary="------------010006060406030601090303"

--------------010006060406030601090303
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

I will check that out, thanks!

Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
NSN - PL/Wroclaw

On 03.02.2016 16:40, EXT Burton, Ross wrote:
>
> On 3 February 2016 at 14:16, Woronicz, Bartosz ( NSN - PL/Wroclaw) 
> <bartosz.woronicz@nokia.com <mailto:bartosz.woronicz@nokia.com>> wrote:
>
>     But I need to the sysroot cleanup deliberately, right ?
>
>
> No, that happens on startup (in master and the jethro release).
>
> Ross


--------------010006060406030601090303
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    I will check that out, thanks!<br>
    <pre class="moz-signature" cols="72">Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
NSN - PL/Wroclaw</pre>
    <div class="moz-cite-prefix">On 03.02.2016 16:40, EXT Burton, Ross
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAJTo0LZFBBoAzRd5wGzg2h+yxR=vPNKBavwe=hhziNYvMXpDsA@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 3 February 2016 at 14:16,
            Woronicz, Bartosz ( NSN - PL/Wroclaw) <span dir="ltr">&lt;<a
                moz-do-not-send="true"
                href="mailto:bartosz.woronicz@nokia.com" target="_blank"><a class="moz-txt-link-abbreviated" href="mailto:bartosz.woronicz@nokia.com">bartosz.woronicz@nokia.com</a></a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div text="#000000" bgcolor="#FFFFFF">But I need to the
                sysroot cleanup deliberately, right ?<br>
              </div>
            </blockquote>
          </div>
          <br>
          No, that happens on startup (in master and the jethro
          release).</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------010006060406030601090303--
