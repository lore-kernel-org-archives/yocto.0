Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDCD6E0027E
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 13:30:39 -0700 (PDT)
Received: by dadz8 with SMTP id z8so1440396dad.35
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 13:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=1YvfSbocU9i0iBytN19HxB6poUvGqjG6zUcKYduuH8I=;
	b=dNfsjiF8P0X6FtuYF7QBHQe9H6gn8SANhx6NDbT94omSdL0rXf/OY2TNvxt/aun6WN
	NLyj94+1sdDkJTC1iVpiq4MdWl2zvPCc5xUIjU9IDEvlYvGW163BCkZ4wQR+hwuDj9fe
	BbVMbB8WvaCGzIXD2afpkh1K8Kl4NaAUY1UB88FtbcEMqtda9/oKtFUlyuVScJPhEgUu
	gRozEcVXXnPzkWzxb5J/d20Zapy8a1F1hLpvsMvz3cYj5v10+SsP596qgjNo5GgMmkX0
	xBY/j6HrTJQk/4ME3Hpi4SL6+5tJBfEyLtNpGxpI+DmZ95pXkCTgw33CCSubQ7Rq6K4S
	5MiA==
Received: by 10.68.129.131 with SMTP id nw3mr15694668pbb.43.1345840239439;
	Fri, 24 Aug 2012 13:30:39 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id vh7sm8970398pbc.22.2012.08.24.13.30.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 24 Aug 2012 13:30:38 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 25 Aug 2012 00:30:32 +0400
Message-Id: <E76AA88E-0C71-4531-B5B4-B1C0074C7DB7@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: New task progress interface with Yocto 1.3 ?
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
X-List-Received-Date: Fri, 24 Aug 2012 20:30:39 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B5B6544F-E08F-4F5D-9031-FD51887403A4"

--Apple-Mail=_B5B6544F-E08F-4F5D-9031-FD51887403A4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      I'm building against the latest yocto master branch, and noticed =
that the task progress now summarizes the total number of active theads:

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
Currently 6 running tasks (334 of 1485):
0: icu-native-3.6-r9 do_compile (pid 58438)
1: python-native-2.7.3-r0.1 do_compile (pid 31435)
2: popt-native-1.16-r2 do_configure (pid 55290)
3: gnutls-native-2.12.20-r8.3 do_compile (pid 55897)
4: acl-native-2.2.51-r3 do_configure (pid 56626)
5: libpcre-native-8.31-r0 do_configure (pid 62244)

Is this update part of the upcoming Yocto 1.3 release?

Best regards,

Elvis Dowson=

--Apple-Mail=_B5B6544F-E08F-4F5D-9031-FD51887403A4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div>Hi,</div><div>&nbsp; &nbsp; &nbsp; I'm building against the =
latest yocto master branch, and noticed that the task progress now =
summarizes the total number of active =
theads:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Resolving any missing task queue =
dependencies</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Preparing =
runqueue</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">NOTE: Executing SetScene Tasks</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Executing =
RunQueue Tasks</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Currently 6 running tasks (334 of =
1485):</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">0: icu-native-3.6-r9 do_compile (pid =
58438)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">1: python-native-2.7.3-r0.1 do_compile (pid =
31435)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">2: popt-native-1.16-r2 do_configure (pid =
55290)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">3: gnutls-native-2.12.20-r8.3 do_compile (pid =
55897)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">4: acl-native-2.2.51-r3 do_configure (pid =
56626)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">5: libpcre-native-8.31-r0 do_configure (pid =
62244)</font></div></div><div><br></div><div>Is this update part of the =
upcoming Yocto 1.3 release?</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_B5B6544F-E08F-4F5D-9031-FD51887403A4--
