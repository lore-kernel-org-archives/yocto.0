Return-Path: <edivya.vyas@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F20CE00D63; Fri, 11 Sep 2015 04:53:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edivya.vyas[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3969EE00B71
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 04:53:54 -0700 (PDT)
Received: by oibi136 with SMTP id i136so41267352oib.3
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 04:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=2ID44ZeLIE5x39gWGgyTV63w+R9ffOtR6NhbnLByGxA=;
	b=yaggqlW9KgNlx8AztXyBL7fP1bH6fNUs8aOk54XsWHKOXAVAru71pMGZrCmUWYxzeG
	UMYrh784E8hUab5qhwIH6Qrdx2ctuq9N981esZWDWnCoktikQ5BUNqvfvbIPDhwVkPEB
	vfx2qrKuTDZgrLV2329Y2iJAGJEJSYR0lNdB6/i5JrFSPpIZEHNqY+pGNoz4sYpgqVSm
	TqLpIhiCPrGkTnhF/zeX8f/JxQy6EFAwMD3jQZAkW/zEJBTnyoYDQ9C5BAmGmbEKQaeb
	mqArigU+NRdQ49demEQUrxTx0tD+y+1M8WQdSKBSSehXbYLWeAme3vqer+nKWnyaSn9C
	udlg==
X-Received: by 10.202.50.137 with SMTP id y131mr35577213oiy.83.1441972434153; 
	Fri, 11 Sep 2015 04:53:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.60.38.137 with HTTP; Fri, 11 Sep 2015 04:53:34 -0700 (PDT)
From: Divya Vyas <edivya.vyas@gmail.com>
Date: Fri, 11 Sep 2015 17:23:34 +0530
Message-ID: <CAGfiMvBAh+ju4OgkjGFw47iYQV5EFu-xwpAOBReGJyVj2zoL8Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: meta-selinux minimum policy
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
X-List-Received-Date: Fri, 11 Sep 2015 11:53:55 -0000
Content-Type: multipart/alternative; boundary=001a113ceef4b6b65f051f775e8c

--001a113ceef4b6b65f051f775e8c
Content-Type: text/plain; charset=UTF-8

Hi,

I have mls and targeted policy installed on my system. I want to have a
minimum policy with all user unconfined and nothing restricted.

I took a minimum policy from selinux-policy-minium noarch rpm and kept in
/etc/selinux folder and edit SELINUXTYPE=minimum. Is this enough to load a
new policy .

load_policy
SELinux:  Could not open policy file <=
/etc/selinux/minimum/policy/policy.28:  No such file or directory
load_policy:  Can't load policy:  No such file or directory

Getting this error while the policy.28 exists in the path.

Please guide me to have a minimum unrestricted policy.


Thanks,
Divya

--001a113ceef4b6b65f051f775e8c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi,<br><br></div>I have mls =
and targeted policy installed on my system. I want to have a minimum policy=
 with all user unconfined and nothing restricted.<br><br></div>I took a min=
imum policy from selinux-policy-minium noarch rpm and kept in /etc/selinux =
folder and edit SELINUXTYPE=3Dminimum. Is this enough to load a new policy =
.<br><br>load_policy <br>SELinux:=C2=A0 Could not open policy file &lt;=3D =
/etc/selinux/minimum/policy/policy.28:=C2=A0 No such file or directory<br>l=
oad_policy:=C2=A0 Can&#39;t load policy:=C2=A0 No such file or directory<br=
><br></div>Getting this error while the policy.28 exists in the path.<br><b=
r></div>Please guide me to have a minimum unrestricted policy. <br><br><br>=
</div>Thanks,<br></div>Divya <br><div><div><div><br><br><div><br><br></div>=
</div></div></div></div>

--001a113ceef4b6b65f051f775e8c--
