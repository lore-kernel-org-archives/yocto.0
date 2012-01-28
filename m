Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FF90E00598
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 06:51:45 -0800 (PST)
Received: by qadz32 with SMTP id z32so1391020qad.14
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 06:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:content-type:subject:date:message-id:cc:to:mime-version
	:x-mailer; bh=ZrOOT7GUzZaS8LEjJYff9N873a7X+IV1YmB6ke+Kc6c=;
	b=BPIPbl2zdWZmjSqs4BrtFW7UmsyX9pDCMvOGM3uLX5fDTAnFhzxsno8dOIvsJimBCZ
	27qKgcPPZ9d/6Bo5rc/cBZhv8gznUws3tuoBO0GewoeSnGVeSEOYNtyopUEvYbE21Gf4
	eOLSynBy20bix0Lr2XGJOHlDhA6uf65ZtSAfg=
Received: by 10.224.108.202 with SMTP id g10mr13791772qap.24.1327762304685;
	Sat, 28 Jan 2012 06:51:44 -0800 (PST)
Received: from [10.0.1.26] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	e11sm2771405qad.21.2012.01.28.06.51.43
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 28 Jan 2012 06:51:44 -0800 (PST)
From: James Abernathy <jfabernathy@gmail.com>
Date: Sat, 28 Jan 2012 09:51:54 -0500
Message-Id: <1AECC3C0-6BFC-4584-B201-30122DB2229D@gmail.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1251.1)
X-Mailer: Apple Mail (2.1251.1)
Subject: Understanding the git commits for Yocto and meta
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
X-List-Received-Date: Sat, 28 Jan 2012 14:51:45 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7E9455B4-3C8F-46AD-9DC8-CD5333398D30"

--Apple-Mail=_7E9455B4-3C8F-46AD-9DC8-CD5333398D30
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

While I've read enough to think I understand git, I get confused when =
it's applied to real situations like Yocto.  If I look at the Yocto =
Development Manual, Appendix A, A.5.2.4 Changing Recipes-kernel, It =
brings up some questions.

1. The way I see it, when you guys commit something to the linux yocto =
master or meta there is a commit string associated with that commit.  =
Not to any certain branch of the git repository, right?

2.  So if I'm building an image for atom-pc using Edison branch, the =
first SRCREV I'm interested in is yocto/standard/common-pc/atom-pc =
branch.  But the commits I see at

 =
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/commit/?h=3Dyoct=
o/standard/common-pc/atom-pc=20

are commits not associated with Edison, but Master, right?

3.  How do I find the commit string for a particular branch, like =
Edison, for something like yocto/standard/common-pc/atom-pc?

4.  To me, branches are things like Edison, Bernard, etc.  But on the =
page:

=
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/refs/heads?h=3Dy=
octo/standard/common-pc/atom-pc

yocto/standard/common-pc/atom-pc, master, and meta are all listed as =
branches.  What is the difference??

5.  The second SRCREV seems to be associated with meta.  How does that =
relate to my whole confusion on branches.

6.  To me, if you are working with Edison and a particular BSP, then =
these 2 commit strings should be constant forever, right?



--Apple-Mail=_7E9455B4-3C8F-46AD-9DC8-CD5333398D30
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">While =
I've read enough to think I understand git, I get confused when it's =
applied to real situations like Yocto. &nbsp;If I look at the Yocto =
Development Manual, Appendix A, A.5.2.4 Changing Recipes-kernel,&nbsp;It =
brings up some questions.<div><br></div><div>1. The way I see it, when =
you guys commit something to the linux yocto master or meta there is a =
commit string associated with that commit. &nbsp;Not to any certain =
branch of the git repository, right?</div><div><br></div><div>2. =
&nbsp;So if I'm building an image for atom-pc using Edison branch, the =
first SRCREV I'm interested in is&nbsp;<code =
class=3D"filename">yocto/standard/common-pc/atom-pc</code>=20
                        branch. &nbsp;But the commits I see =
at</div><div><br></div><div>&nbsp;<a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/commit/?=
h=3Dyocto/standard/common-pc/atom-pc">http://git.yoctoproject.org/cgit/cgi=
t.cgi/linux-yocto-3.0/commit/?h=3Dyocto/standard/common-pc/atom-pc</a>&nbs=
p;</div><div><br></div><div>are commits not associated with Edison, but =
Master, right?</div><div><br></div><div>3. &nbsp;How do I find the =
commit string for a particular branch, like Edison, for something like =
yocto/standard/common-pc/atom-pc?</div><div><br></div><div>4. &nbsp;To =
me, branches are things like Edison, Bernard, etc. &nbsp;But on the =
page:</div><div><br></div><div><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/refs/hea=
ds?h=3Dyocto/standard/common-pc/atom-pc">http://git.yoctoproject.org/cgit/=
cgit.cgi/linux-yocto-3.0/refs/heads?h=3Dyocto/standard/common-pc/atom-pc</=
a></div><div><br></div><div>yocto/standard/common-pc/atom-pc, master, =
and meta are all listed as branches. &nbsp;What is the =
difference??</div><div><br></div><div>5. &nbsp;The second SRCREV seems =
to be associated with meta. &nbsp;How does that relate to my whole =
confusion on branches.</div><div><br></div><div>6. &nbsp;To me, if you =
are working with Edison and a particular BSP, then these 2 commit =
strings should be constant forever, =
right?</div><div><br></div><div><br></div></body></html>=

--Apple-Mail=_7E9455B4-3C8F-46AD-9DC8-CD5333398D30--
