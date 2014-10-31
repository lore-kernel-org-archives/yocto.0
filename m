Return-Path: <mikehogg@mountdrive.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0BE2E007A0; Fri, 31 Oct 2014 08:15:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.183.10.83 listed in list.dnswl.org]
X-Greylist: delayed 538 seconds by postgrey-1.32 at yocto-www;
	Fri, 31 Oct 2014 08:15:10 PDT
Received: from 5.array2.smtp.34sp.com (5.array2.smtp.34sp.com [46.183.10.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 461D8E00749
	for <yocto@yoctoproject.org>; Fri, 31 Oct 2014 08:15:10 -0700 (PDT)
Received: from smtpauth1.array1.smtp.34sp.com (lvs3.34sp.com [80.82.124.221])
	by 5.array2.smtp.34sp.com (Postfix) with ESMTP id 1A1BC202A3
	for <yocto@yoctoproject.org>; Fri, 31 Oct 2014 15:06:10 +0000 (GMT)
Received: from host81-148-60-18.in-addr.btopenworld.com ([81.148.60.18]:54532
	helo=[192.168.192.40])
	by smtpauth1.array1.smtp.34sp.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.72) (envelope-from <mikehogg@mountdrive.com>)
	id 1XkDmD-00023P-OB; Fri, 31 Oct 2014 15:06:09 +0000
User-Agent: K-9 Mail for Android
In-Reply-To: <BLU436-SMTP125444BFE2825F659D2B396929A0@phx.gbl>
References: <BLU436-SMTP125444BFE2825F659D2B396929A0@phx.gbl>
MIME-Version: 1.0
From: Mike Hogg <mikehogg@mountdrive.com>
Date: Fri, 31 Oct 2014 15:06:07 +0000
To: Natural Groove <natural_groove@hotmail.fr>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <6686EF67-F451-4B2B-87D3-F9AB644F8299@mountdrive.com>
X-Authenticated-As: mountdrive.com
X-OriginalSMTPIP: 81.148.60.18
X-34SP-MailScanner-Information: Please contact the ISP for more information
X-34SP-MailScanner-ID: 1A1BC202A3.A2B9E
X-34SP-MailScanner: Found to be clean
X-34SP-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.002, required 6, HTML_MESSAGE 0.00, URIBL_BLOCKED 0.00)
X-34SP-MailScanner-From: mikehogg@mountdrive.com
X-Mailman-Approved-At: Fri, 31 Oct 2014 08:40:17 -0700
Subject: Re: Raspberry b+ support
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
X-List-Received-Date: Fri, 31 Oct 2014 15:15:19 -0000
Content-Type: multipart/alternative;
	boundary="----I2SV4Y0RQ4BTY0X9KAHPXY05QJHIZU"
Content-Transfer-Encoding: 7bit

------I2SV4Y0RQ4BTY0X9KAHPXY05QJHIZU
Content-Type: text/plain;
 charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Yes you can and I have=2E Search the pi forum for my posts there, last time=
 I tried a yocto build for the b+ it pulled in the old pi firmware which do=
esn't work on the b+=2E Per my notes on the pi forum thats easily fixed by =
copying firmware from another b+ image=2E=20

On 31 October 2014 12:13:53 GMT+00:00, Natural Groove <natural_groove@hotm=
ail=2Efr> wrote:
>Hi,
>
>I am interested in using oe to crossbuild stuff for raspberry pi b+,
>and=20
>I wondered if someone already achieved to do this?
> From what I read there are some specifics to deal with, can someone=20
>help me with setting this up for b+?
>
>Thanks in advance
>Natural
>
>---
>Ce courrier =C3=A9lectronique ne contient aucun virus ou logiciel
>malveillant parce que la protection avast! Antivirus est active=2E
>http://www=2Eavast=2Ecom
>
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject=2Eorg
>https://lists=2Eyoctoproject=2Eorg/listinfo/yocto

------I2SV4Y0RQ4BTY0X9KAHPXY05QJHIZU
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Yes you can and I have=2E Search the pi forum for =
my posts there, last time I tried a yocto build for the b+ it pulled in the=
 old pi firmware which doesn&#39;t work on the b+=2E Per my notes on the pi=
 forum thats easily fixed by copying firmware from another b+ image=2E <br>=
<br><div class=3D"gmail_quote">On 31 October 2014 12:13:53 GMT+00:00, Natur=
al Groove &lt;natural_groove@hotmail=2Efr&gt; wrote:<blockquote class=3D"gm=
ail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb=
(204, 204, 204); padding-left: 1ex;">
<pre class=3D"k9mail">Hi,<br /><br />I am interested in using oe to crossb=
uild stuff for raspberry pi b+, and <br />I wondered if someone already ach=
ieved to do this?<br /> From what I read there are some specifics to deal w=
ith, can someone <br />help me with setting this up for b+?<br /><br />Than=
ks in advance<br />Natural<br /><br />---<br />Ce courrier =C3=A9lectroniqu=
e ne contient aucun virus ou logiciel malveillant parce que la protection a=
vast! Antivirus est active=2E<br /><a href=3D"http://www=2Eavast=2Ecom">htt=
p://www=2Eavast=2Ecom</a><br /></pre></blockquote></div></body></html>

------I2SV4Y0RQ4BTY0X9KAHPXY05QJHIZU--
