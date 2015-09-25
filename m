Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8622FE00EDA; Fri, 25 Sep 2015 02:02:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99515E00A3B
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 02:02:25 -0700 (PDT)
Received: by vkgd64 with SMTP id d64so52511641vkg.0
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 02:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=nv6BXJ34sXToWPIE1qBBFV5tkVnzaXWJjkkigc6gukk=;
	b=mo3MZdCSxPIs1iDWZAzRcL9scCn428lcb5X5AKB1a4nqEhgW0D/I8H4q5mlp63CNGb
	GVhDxUbPQBd2vsAdSuJIYkCCX3aV98NcTWfg5m4WSTC89HIOBjEB3y6GoTbxsJCaSqBU
	uXDoH7lNePmLAwUMxc4svaU1ty6OFqA/QJXMcr5FtnO9wUIwEhKVfjaG/14NfRe4A/Hr
	j4LLRajnBhrsW14xGJ6TuVv1KJmvlLMY2AK+CgUxF++qFWFYxJ6rA3zDB4Uv0yaT+HsA
	n3Q+2yyVZTyLli86gyut8chYdep/viLiGK7JZUnE1YvHdvtPJ4ZQfZRwUa4zQfp+zohh
	16PA==
MIME-Version: 1.0
X-Received: by 10.31.56.140 with SMTP id f134mr2524231vka.108.1443171744457;
	Fri, 25 Sep 2015 02:02:24 -0700 (PDT)
Received: by 10.31.179.207 with HTTP; Fri, 25 Sep 2015 02:02:24 -0700 (PDT)
Date: Fri, 25 Sep 2015 14:32:24 +0530
Message-ID: <CALLyC8QsBDa-O7Htf+qOhsARY9SKTyuLYkdOZtczpc-M1poJjA@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: yocto@yoctoproject.org
Subject: How can i install busybox "mount" command instead of util-linux "mount" command
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
X-List-Received-Date: Fri, 25 Sep 2015 09:02:26 -0000
Content-Type: multipart/alternative; boundary=001a1143f0cc2dae1805208e9be7

--001a1143f0cc2dae1805208e9be7
Content-Type: text/plain; charset=UTF-8

Hi all,
     Can any one can please tell me how can i install busybox "mount"
command instead of util-linux "mount" . By default util-linux "mount" and
"umount" commnad is installing . But rest of the commands are installing
from busybox like ls,cat and so on.
     In the final image log file (list of packages installed in the image)
showing util.linux-mount and util.linux-umount packages is installing by
default even i am not including those . How can i overcome  the issue. i
want  to install busybox "mount" command only not form util-linux "mount"
command .

Thanks and regards
      vivek

--001a1143f0cc2dae1805208e9be7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div>=C2=A0 =C2=A0 =C2=A0Can any one can please tel=
l me how can i install busybox &quot;mount&quot; command instead of util-li=
nux &quot;mount&quot; . By default util-linux &quot;mount&quot; and &quot;u=
mount&quot; commnad is installing . But rest of the commands are installing=
 from busybox like ls,cat and so on.</div><div>=C2=A0 =C2=A0 =C2=A0In the f=
inal image log file (list of packages installed in the image) showing util.=
linux-mount and util.linux-umount packages is installing by default even i =
am not including those . How can i overcome =C2=A0the issue. i want =C2=A0t=
o install busybox &quot;mount&quot; command only not form util-linux &quot;=
mount&quot; command .</div><div><br></div><div>Thanks and regards</div><div=
>=C2=A0 =C2=A0 =C2=A0 vivek</div></div>

--001a1143f0cc2dae1805208e9be7--
