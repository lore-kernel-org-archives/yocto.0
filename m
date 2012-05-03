Return-Path: <elvis.dowson@mac.com>
Received: from nk11p04mm-asmtpout003.mac.com (nk11p04mm-asmtpout003.mac.com
	[17.158.236.238])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E522DE00596
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 11:26:50 -0700 (PDT)
MIME-version: 1.0
Received: from [192.168.1.33] ([88.6.19.240]) by nk11p04mm-asmtp003.mac.com
	(Oracle Communications Messaging Server 7u4-23.01(7.0.4.23.0) 64bit
	(built Aug
	10 2011)) with ESMTPSA id <0M3G00B0ELWNOP80@nk11p04mm-asmtp003.mac.com>
	for yocto@yoctoproject.org; Thu, 03 May 2012 18:26:50 +0000 (GMT)
X-Proofpoint-Virus-Version: vendor=fsecure
	engine=2.50.10432:5.6.7580,1.0.260,0.0.0000
	definitions=2012-05-03_07:2012-05-03, 2012-05-03,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	ipscore=0 suspectscore=0 phishscore=0 bulkscore=0 adultscore=0
	classifier=spam
	adjust=0 reason=mlx scancount=1 engine=6.0.2-1012030000
	definitions=main-1205030200
From: Elvis Dowson <elvis.dowson@mac.com>
Date: Thu, 03 May 2012 20:26:46 +0200
In-reply-to: <1658FA66-CEFA-4D13-8410-F3E63449D44F@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <1658FA66-CEFA-4D13-8410-F3E63449D44F@gmail.com>
Message-id: <4C89C11D-E1DB-4DA3-B088-C088AFD94FB3@mac.com>
X-Mailer: Apple Mail (2.1257)
X-Mailman-Approved-At: Thu, 03 May 2012 11:34:49 -0700
Subject: Re: Failed to fetch URL http://downloads.sourceforge.net/project/libcg/libcgroup/v0.37.1/libcgroup-0.37.1.tar.bz2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 May 2012 18:26:51 -0000
Content-type: multipart/alternative;
	boundary="Boundary_(ID_XpaQpIwdh0l9PXM2HnV7CQ)"

--Boundary_(ID_XpaQpIwdh0l9PXM2HnV7CQ)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Hi,

On May 3, 2012, at 6:52 PM, Elvis Dowson wrote:

> When I try to run bitbake -c fetchall core-image-minimal, it fails to fetch libcgroup-0.37.1
> 
> NOTE: Running task 139 of 305 (ID: 264, /tool/yocto/meta-openembedded/meta-oe/recipes-core/libcgroup/libcgroup_0.37.1.bb, do_fetch)
> NOTE: package libcgroup-0.37.1-r1: task do_fetch: Started
> WARNING: Failed to fetch URL http://downloads.sourceforge.net/project/libcg/libcgroup/v0.37.1/libcgroup-0.37.1.tar.bz2

This was a transient failure because the SourceForge mirrors were down for about 4 hours. Its up now, and all the packages are downloading fine.

I'm starting to like yocto, its definitely got a more deterministic feel to it, and things seem to be logically laid out and easy to configure.

Best regards,

Elvis Dowson

--Boundary_(ID_XpaQpIwdh0l9PXM2HnV7CQ)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On May 3, 2012, at 6:52 PM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; "><div>When I try to =
run&nbsp;bitbake -c fetchall core-image-minimal, it fails to fetch =
libcgroup-0.37.1</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Running task =
139 of 305 (ID: 264, =
/tool/yocto/meta-openembedded/meta-oe/recipes-core/libcgroup/libcgroup_0.3=
7.1.bb, do_fetch)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package libcgroup-0.37.1-r1: task =
do_fetch: Started</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">WARNING: Failed to fetch URL <a =
href=3D"http://downloads.sourceforge.net/project/libcg/libcgroup/v0.37.1/l=
ibcgroup-0.37.1.tar.bz2">http://downloads.sourceforge.net/project/libcg/li=
bcgroup/v0.37.1/libcgroup-0.37.1.tar.bz2</a></font></div></div></div></blo=
ckquote><br></div><div>This was a transient failure because the =
SourceForge mirrors were down for about 4 hours. Its up now, and all the =
packages are downloading fine.</div></div><div><br></div><div>I'm =
starting to like yocto, its definitely got a more deterministic feel to =
it, and things seem to be logically laid out and easy to =
configure.</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Boundary_(ID_XpaQpIwdh0l9PXM2HnV7CQ)--
