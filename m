Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC1BFE00D60; Mon, 20 May 2019 23:09:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA434E00D32
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 23:09:52 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id r4so17012938wro.10
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 23:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=L618j8nptSC7wmFoGS8e45CYJanp6ew8B5o9dGIb4iY=;
	b=aB038SGx15gE/kI08Iwl/TWO/k135suucTuFe6kU5/PODHlUYp5C8SM9OqkmyM8bCK
	AP4yIDHLigpmE0HTQ/LVNI9tKQiswDsHvykIrCKXQUhvCTHiBnQ/VTi5s5wWBs5U2Hgs
	7hjAaqsvockL6Yq6PrnERXlndm0fzwnDB0xOL/uGL2adeazyRAuei1DwtnJZFjQsiLd7
	AaMhStO6kZUWN9mQdUYKgPOiAuqq95GMiwuAEMHC9/Guj/fkUKUI2RVnh1Q/SP47x+Wm
	mAzyh4ijBvYBT4NiTnjopUjf5ew1OwVH6FetnGdVB0ehU7laVNjUPxj9a/6boPEL//Hv
	/BXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=L618j8nptSC7wmFoGS8e45CYJanp6ew8B5o9dGIb4iY=;
	b=Cc9+VUVlQrTnuAKhFRCVqBB5A904Dcsoxf1TtzRgwMpmBN/ROmmxwgp71ISruoGlT1
	UNk3nO1vIQAUfYXdkn8DpDGGaBPwjoqo4kQe7nhngtEHd5cV+xxAMGk0WmMvC3PE2XMd
	q5I7AxsOuT9E5yyHQbW7N9A9cTXzWZujW7mtJ+jF3th/UxGt47gWkxJfCu9Qgp7P7YUU
	JEWTBcLkYJTR8yCHkVGXXTSDUJdImhn3v07dZMP/E0ZHYGaLG1sZkMp7uXFe9x32GgpA
	+v6pw30xXxZhQ02xm2/vR5j212HwgKCNIT9lfTzyzdtXqgsUJod/a8gzvjNDjgjNkmdu
	DxUw==
X-Gm-Message-State: APjAAAV6Y/q0ORcFDxb0dAVy1WDN1h8opWSbNBF5qdwkaNHW6iMu0Hmz
	1uD1KiDtSSv98e3/EYvzmCfs7MQVzlu/250lVsAOuF6lFOg=
X-Google-Smtp-Source: APXvYqwEk0cuVexEY0L1/B+ZdQSG/HAwWdzZkoLXfpZTa0bIhmckUtQ22BPlOOBHFQldrzSd7Wh6EcrFcOsxuS7EY0g=
X-Received: by 2002:a5d:4946:: with SMTP id r6mr35723349wrs.310.1558418991270; 
	Mon, 20 May 2019 23:09:51 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 21 May 2019 08:09:40 +0200
Message-ID: <CAAfyv36rHpLWA0sO=nZHePMHVjLBpsUgGmPUXpQ2gObF7+2gJA@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: setting SRC_URI runtime - possible options
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
X-List-Received-Date: Tue, 21 May 2019 06:09:55 -0000
Content-Type: multipart/alternative; boundary="00000000000063032d05895fb212"

--00000000000063032d05895fb212
Content-Type: text/plain; charset="UTF-8"

Hi,

I have special need to fetch repo which is defined in config file in form
(repo and branch):
git@testrepo.com/myrepo mysuperbranch

Config file is placed in recipe directory. I've tried to add some bits and
pieces but it seems it's not doing right. Snippet from recipe:

LICENSE = "CLOSED"

SRCREV = "${AUTOREV}"
PV = "${SRCPV}"

do_fetch_prepend () {

    src_uri = d.getVar('SRC_URI')

    p = d.getVar("FILE")
    idx = p.rfind("/")
    p = p[:idx]
    p += "/config.txt"

    with open(p) as f:
        read_data = f.readline().strip().split(" ")
        d.setVar('SRC_URI', read_data[0])
}

SRC_URI = ""

S = "${WORKDIR}/git"

It looks like that repo is fetched but unpack doesn't put git directory in
$WORKDIR and in build directory I get strange directories like:

!=
bitbake-cookerdaemon.log
cache
conf
${@d.getVar('S')
else
if
os.path.join('
os.path.normpath(d.getVar('S'))
os.path.normpath(d.getVar('WORKDIR'))
'patches')}
tmp

so there is obviously I'm doing something wrong :). My question is if this
is the way or should I stick to some variables set in local.conf and then
use it in recipe? Thanks a lot for any pointers.

BR,

marek
-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--00000000000063032d05895fb212
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi,<div><br></div><div>I=
 have special need to fetch repo which is defined in config file in form (r=
epo and branch):</div><div><a href=3D"http://git@testrepo.com/myrepo">git@t=
estrepo.com/myrepo</a> mysuperbranch</div><div><br></div><div>Config file i=
s placed in recipe directory. I&#39;ve tried to add some bits and pieces bu=
t it seems it&#39;s not doing right. Snippet from recipe:</div><div><br></d=
iv><div><div>LICENSE =3D &quot;CLOSED&quot;</div><div><br></div><div>SRCREV=
 =3D &quot;${AUTOREV}&quot;</div><div>PV =3D &quot;${SRCPV}&quot;</div><div=
><br></div><div>do_fetch_prepend () {</div><div>=C2=A0 =C2=A0=C2=A0</div><d=
iv>=C2=A0 =C2=A0 src_uri =3D d.getVar(&#39;SRC_URI&#39;)</div><div>=C2=A0 =
=C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 p =3D d.getVar(&quot;FILE&quot;)</div>=
<div>=C2=A0 =C2=A0 idx =3D p.rfind(&quot;/&quot;)</div><div>=C2=A0 =C2=A0 p=
 =3D p[:idx]</div><div>=C2=A0 =C2=A0 p +=3D &quot;/config.txt&quot;</div><d=
iv><br></div><div>=C2=A0 =C2=A0 with open(p) as f:</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 read_data =3D f.readline().strip().split(&quot; &quot;)</div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 d.setVar(&#39;SRC_URI&#39;, read_data[0])<=
br></div><div>}</div><div><br></div><div>SRC_URI =3D &quot;&quot;<br></div>=
<div><br></div><div>S =3D &quot;${WORKDIR}/git&quot;</div></div><div><br cl=
ear=3D"all"><div>It looks like that repo is fetched but unpack doesn&#39;t =
put git directory in $WORKDIR and in build directory I get strange director=
ies like:</div><div><div><br></div><div>!=3D</div><div>bitbake-cookerdaemon=
.log</div><div>cache</div><div>conf</div><div>${@d.getVar(&#39;S&#39;)</div=
><div>else</div><div>if</div><div>os.path.join(&#39;</div><div>os.path.norm=
path(d.getVar(&#39;S&#39;))</div><div>os.path.normpath(d.getVar(&#39;WORKDI=
R&#39;))</div><div>&#39;patches&#39;)}</div><div>tmp</div></div><div><br></=
div><div>so there is obviously I&#39;m doing something wrong :). My questio=
n is if this is the way or should I stick to some variables set in local.co=
nf and then use it in recipe? Thanks a lot for any pointers.</div><div><br>=
</div><div>BR,</div><div><br></div><div>marek</div>-- <br><div dir=3D"ltr" =
class=3D"gmail_signature">as simple and primitive as possible<br>----------=
---------------------------------------<br>Marek Belisko - OPEN-NANDRA<br>F=
reelance Developer<br><br>Ruska Nova Ves 219 | Presov, 08005 Slovak Republi=
c<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitter: #opennandra<br>=
web: <a href=3D"http://open-nandra.com" target=3D"_blank">http://open-nandr=
a.com</a></div></div></div></div></div>

--00000000000063032d05895fb212--
