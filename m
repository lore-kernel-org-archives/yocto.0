Return-Path: <pandey_himanshu80@rediffmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A651E002A6; Fri, 20 Jun 2014 23:56:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_IMAGE_ONLY_24,HTML_MESSAGE,
	MSGID_FROM_MTA_HEADER, RDNS_NONE, T_REMOTE_IMAGE,
	UNPARSEABLE_RELAY autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pandey_himanshu80[at]rediffmail.com)
	* 1.3 HTML_IMAGE_ONLY_24 BODY: HTML: images with 2000-2400 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 MSGID_FROM_MTA_HEADER Message-Id was added by a relay
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from f4mail-83-121.rediffmail.com (unknown [203.199.83.121])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F45FE00288
	for <yocto@yoctoproject.org>; Fri, 20 Jun 2014 23:56:01 -0700 (PDT)
Received: from rediffmail.com (unknown [10.50.250.70])
	by f4mail-83-121.rediffmail.com (Postfix) with SMTP id 79C903081F08
	for <yocto@yoctoproject.org>; Sat, 21 Jun 2014 12:17:55 +0530 (IST)
Received: (qmail 3720 invoked by uid 510); 21 Jun 2014 06:55:42 -0000
Comment: DomainKeys? See http://antispam.yahoo.com/domainkeys
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=redf; d=rediffmail.com;
	b=ccH9GM10CYg5IkzG7Xyqe2eslf8YcoX6MflnB0TsFUTVGFw/1NYd/RtFUjDdKWxfDLTxTiTmlHsNQz7I+OeFFO+YP/riDO7Pl0KKcI6kZaUgnTFb8R3DPAlm2BdC8a/se6CUtpLRpLis4zySmDJfeocGHIiexDsCNv4FlhD7eCE=
	; 
x-m-msg: asd54ad564ad7aa6sd5as6d5; a6da7d6asas6dasd77; 5dad65ad5sd;
X-CTCH-Spam: Unknown
X-CTCH-VOD: Unknown
X-CTCH-Flags: : 0
X-CTCH-RefID: str=0001.0A160208.53A52C6E.0095, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-REDF-OSEN: pandey_himanshu80@rediffmail.com
Date: 21 Jun 2014 06:55:42 -0000
Message-ID: <20140621065542.3653.qmail@f4mail-235-236.rediffmail.com>
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Received: from unknown 122.177.170.20 by rediffmail.com via HTTP;
	21 Jun 2014 06:55:42 -0000
Sender: pandey_himanshu80@rediffmail.com
From: "Himanshu  Pandey" <pandey_himanshu80@rediffmail.com>
Subject: Hi
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
X-List-Received-Date: Sat, 21 Jun 2014 06:56:05 -0000
Content-Type: multipart/alternative;
	boundary="=_a52216bba6c56034abae5137dec1ca9b"

--=_a52216bba6c56034abae5137dec1ca9b
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"

Hi,

I am a starter in yocto.

I have a couple of&nbsp; questions:

1. Please explain me in yocto the exact steps involved in creating a final image. That means what all scripts are used,used receipes,used bbclasses etc.

2. What are the steps involved in creating a final .tar.bz2. Please explain all the scripts,receipes,bbclasses etc. that are involved. 

3. I have a requirement that once the .tar.bz2 is created I want my shell script to be executed finally. So what I have to do in order to achieve this.&nbsp; 

Regards,
Himanshu Pandey 

&nbsp; 

&nbsp; 

--=_a52216bba6c56034abae5137dec1ca9b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

Hi,<br><br>I am a starter in yocto.<br><br>I have a couple of&nbsp; questio=
ns:<br><br>1. Please explain me in yocto the exact steps involved in creati=
ng a final image. That means what all scripts are used,used receipes,used b=
bclasses etc.<br><br>2. What are the steps involved in creating a final .ta=
r.bz2. Please explain all the scripts,receipes,bbclasses etc. that are invo=
lved. <br><br>3. I have a requirement that once the .tar.bz2 is created I w=
ant my shell script to be executed finally. So what I have to do in order t=
o achieve this.&nbsp; <br><br>Regards,<br>Himanshu Pandey <br><br>&nbsp; <b=
r><br>&nbsp; <br><br><A HREF=3D"http://sigads.rediff.com/RealMedia/ads/clic=
k_nx.ads/www.rediffmail.com/signatureline.htm@Middle?" target=3D"_blank"><I=
MG SRC=3D"http://sigads.rediff.com/RealMedia/ads/adstream_nx.ads/www.rediff=
mail.com/signatureline.htm@Middle"></A><table cellpadding=3D"0" cellspacing=
=3D"0"><tbody><tr><td><div style=3D"font-family: Arial, Helvetica, sans-ser=
if; font-size:14px">Get your own <span style=3D"padding-bottom: 0px; backgr=
ound-color: #cc0000; padding-left: 3px; padding-RIGHT: 3px; font-family: Ar=
ial, Helvetica, sans-serif; color: #ffffff; font-size: 12px; padding-top: 0=
px"><b>FREE</b></span> website,  <span style=3D"padding-bottom: 0px; backgr=
ound-color: #c00; padding-left: 3px; padding-RIGHT: 3px; font-family: Arial=
, Helvetica, sans-serif; color: #ffffff; font-size: 12px; padding-top: 0px"=
><b>FREE</b></span> domain &amp; <span style=3D"padding-bottom: 0px; backgr=
ound-color: #c00; padding-left: 3px; padding-RIGHT: 3px; font-family: Arial=
, Helvetica, sans-serif; color: #ffffff; font-size: 12px; padding-top: 0px"=
><b>FREE</b></span> mobile app with Company email. &nbsp;</div></td><td><a =
href=3D"http://track.rediff.com/click?url=3D___http://businessemail.rediff.=
com/email-ids-for-companies-with-less-than-50-employees?sc_cid=3Dsign-1-10-=
13___&cmp=3Dhost&lnk=3Dsign-1-10-13&nsrv1=3Dhost" style=3D"font-family: Ari=
al, Helvetica, sans-serif; color: #fff; font-size: 14px; color:#0000cc" tar=
get=3D"_blank"><b>Know More ></b></a><!-- <in-put type=3D"button" cl-ass=3D=
"button" on-click=3D"parent.location=3D&#39;http://track.rediff.com/click?u=
rl=3D___http://businessemail.rediff.com/company-email-hosting-services?sc_c=
id=3Dsignature-23-9-13___&amp;cmp=3Dsignature-23-9-13&amp;lnk=3Dmypagelogou=
t&amp;nsrv1=3Dhost&#39;" value=3D"Know more &gt;"> </input> --></td></tr></=
tbody></table>

--=_a52216bba6c56034abae5137dec1ca9b--
