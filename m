Return-Path: <pandey_himanshu80@rediffmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39129E00C18; Thu, 19 Jun 2014 06:50:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: ****
X-Spam-Status: No, score=4.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_IMAGE_ONLY_24,HTML_MESSAGE,
	HTML_SHORT_LINK_IMG_3, MSGID_FROM_MTA_HEADER, RCVD_IN_BRBL_LASTEXT,
	RDNS_NONE, 
	T_REMOTE_IMAGE,UNPARSEABLE_RELAY autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pandey_himanshu80[at]rediffmail.com)
	* 1.3 HTML_IMAGE_ONLY_24 BODY: HTML: images with 2000-2400 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.6 RCVD_IN_BRBL_LASTEXT RBL: RCVD_IN_BRBL_LASTEXT
	*      [203.199.83.116 listed in bb.barracudacentral.org]
	*  0.3 HTML_SHORT_LINK_IMG_3 HTML is very short with a linked image
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 MSGID_FROM_MTA_HEADER Message-Id was added by a relay
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 691 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 Jun 2014 06:50:04 PDT
Received: from f4mail-83-116.rediffmail.com (unknown [203.199.83.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70B61E00BE9
	for <yocto@yoctoproject.org>; Thu, 19 Jun 2014 06:50:04 -0700 (PDT)
Received: from rediffmail.com (unknown [10.50.250.70])
	by f4mail-83-115.rediffmail.com (Postfix) with SMTP id CA7993080B9B
	for <yocto@yoctoproject.org>; Thu, 19 Jun 2014 19:00:34 +0530 (IST)
Received: (qmail 17323 invoked by uid 510); 19 Jun 2014 13:38:14 -0000
Comment: DomainKeys? See http://antispam.yahoo.com/domainkeys
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=redf; d=rediffmail.com;
	b=t6vDH4aw6yaYcGWq+1596BIsL0706s8eWjkZ/Ex7RkVfG4UruwLy/KkxmKUCPzSWi0K2v9aenw+CbzenHXanpHMai0l7o6Zrv0l6b0kuV2zkt9daCegefkf8xdxW1Og9N/L3T8n7L09cqBFL6S3x5nPPLac5pA0yAM9RL6kBRi0=
	; 
x-m-msg: asd54ad564ad7aa6sd5as6d5; a6da7d6asas6dasd77; 5dad65ad5sd;
X-CTCH-Spam: Unknown
X-CTCH-VOD: Unknown
X-CTCH-Flags: : 0
X-CTCH-RefID: str=0001.0A160201.53A2E7C7.0097, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-REDF-OSEN: pandey_himanshu80@rediffmail.com
Date: 19 Jun 2014 13:38:14 -0000
Message-ID: <20140619133814.17283.qmail@f6mail-235-77.rediffmail.com>
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Received: from unknown 103.25.205.2 by rediffmail.com via HTTP;
	19 Jun 2014 13:38:14 -0000
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
X-List-Received-Date: Thu, 19 Jun 2014 13:50:10 -0000
Content-Type: multipart/alternative;
	boundary="=_3f95b50efa26ad5a9d7f2d870844e7c5"

--=_3f95b50efa26ad5a9d7f2d870844e7c5
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"

Hi,

I want to perform some operation after rootfs.tar.bz2 is created. I have written a shell script to perform a set of operations. Could you please tell me that where shall I include this script so that it gets executed.

Regards,
Himanshu



--=_3f95b50efa26ad5a9d7f2d870844e7c5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

Hi,<br><br>I want to perform some operation after rootfs.tar.bz2 is created=
. I have written a shell script to perform a set of operations. Could you p=
lease tell me that where shall I include this script so that it gets execut=
ed.<br><br>Regards,<br>Himanshu<br><br><br><br><A HREF=3D"http://sigads.red=
iff.com/RealMedia/ads/click_nx.ads/www.rediffmail.com/signatureline.htm@Mid=
dle?" target=3D"_blank"><IMG SRC=3D"http://sigads.rediff.com/RealMedia/ads/=
adstream_nx.ads/www.rediffmail.com/signatureline.htm@Middle"></A><table cel=
lpadding=3D"0" cellspacing=3D"0"><tbody><tr><td><div style=3D"font-family: =
Arial, Helvetica, sans-serif; font-size:14px">Get your own <span style=3D"p=
adding-bottom: 0px; background-color: #cc0000; padding-left: 3px; padding-R=
IGHT: 3px; font-family: Arial, Helvetica, sans-serif; color: #ffffff; font-=
size: 12px; padding-top: 0px"><b>FREE</b></span> website,  <span style=3D"p=
adding-bottom: 0px; background-color: #c00; padding-left: 3px; padding-RIGH=
T: 3px; font-family: Arial, Helvetica, sans-serif; color: #ffffff; font-siz=
e: 12px; padding-top: 0px"><b>FREE</b></span> domain &amp; <span style=3D"p=
adding-bottom: 0px; background-color: #c00; padding-left: 3px; padding-RIGH=
T: 3px; font-family: Arial, Helvetica, sans-serif; color: #ffffff; font-siz=
e: 12px; padding-top: 0px"><b>FREE</b></span> mobile app with Company email=
. &nbsp;</div></td><td><a href=3D"http://track.rediff.com/click?url=3D___ht=
tp://businessemail.rediff.com/email-ids-for-companies-with-less-than-50-emp=
loyees?sc_cid=3Dsign-1-10-13___&cmp=3Dhost&lnk=3Dsign-1-10-13&nsrv1=3Dhost"=
 style=3D"font-family: Arial, Helvetica, sans-serif; color: #fff; font-size=
: 14px; color:#0000cc" target=3D"_blank"><b>Know More ></b></a><!-- <in-put=
 type=3D"button" cl-ass=3D"button" on-click=3D"parent.location=3D&#39;http:=
//track.rediff.com/click?url=3D___http://businessemail.rediff.com/company-e=
mail-hosting-services?sc_cid=3Dsignature-23-9-13___&amp;cmp=3Dsignature-23-=
9-13&amp;lnk=3Dmypagelogout&amp;nsrv1=3Dhost&#39;" value=3D"Know more &gt;"=
> </input> --></td></tr></tbody></table>

--=_3f95b50efa26ad5a9d7f2d870844e7c5--
