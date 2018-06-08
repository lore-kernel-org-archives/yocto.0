Return-Path: <jan.vermaete@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5C36E00CDE; Fri,  8 Jun 2018 02:58:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jan.vermaete[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 797E3E00720
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2018 02:58:09 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id i205-v6so11324908oib.1
	for <yocto@yoctoproject.org>; Fri, 08 Jun 2018 02:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=I6AZx78J+4O7Hd58/OfPfE7nr+AN8mjH/VYIn2WUTpc=;
	b=kvDx2TVn0OyiaMD2wQB4RgBQ7pVFMmVr4+2/Nw7nDmhwJz2rY1quGxP9HeLnxInUxK
	mM4RLyIEG22BaqChpWAwGSJ6DWvhavgfkRt3AosCIbnTQXWaN5vL+Mq6x2hRgLx39upB
	c0heu9ZXYLYJsA6T2AgGfH8yViho2w+2QiprIz6E2aShSAnyfmX3V9dwYAVyFEuSCCCh
	qoVFnF/GlYXsrGprz24pzaQjrs9GjA2BLgCKozHJ6N93KGf0f21Z+uSwxgNRt6YZdft5
	vUkOsqUprV7yW3AKIWIKV+nrPrBMdMAI/0UvUOCqIxeJrsKuzNzdP+5VoQNKGfnHx+nN
	d9aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=I6AZx78J+4O7Hd58/OfPfE7nr+AN8mjH/VYIn2WUTpc=;
	b=Wqb1bSW3pBa+eH0MntrLS0qyNIViZCPzPtxF5428O6mP3ji3ZDWpVrcaOvzcFgiJGB
	JykNHrXulitduK1xFaUD2kPZV2OdmKmgkLV42K0zJlon1WpCtJHRJEs3zeAPNdFA4IoB
	Vh9vdAhFib7CmzHdColIjua2Ywja7Yx/ZIBe8E65fRLWYaNqB4L22FQLNcgML2mkdDMZ
	oIWNLVbFLzu9EJjeTquV0V0iSys41783SNRoRNteoZ63XTXOzjmEWpfL0mszd8Zpmoho
	eXGb79XTSaMt/0eo+iYV4QuBTMcn7umB67Fmvg3R/PgpagJiWGoL4KvrFQg0vjNlz1rm
	2UbA==
X-Gm-Message-State: APt69E3h6XWpWdK87CNm1x/6HI6kx+lTDOTeljTVHNumcwTGhBwmYWvo
	o/1cAWZ644GN4uI408fxoukS4Kw9p85z1d/doQkKvg==
X-Google-Smtp-Source: ADUXVKJYf03TipQgS6SRHxmAunREZVg/jdzqVNlxSbzp0jI6OYJH9S65UG5LsJU1eP1X8AT6mth9+RgywhNIOYxzGIg=
X-Received: by 2002:aca:750d:: with SMTP id
	q13-v6mr2977212oic.40.1528451888704; 
	Fri, 08 Jun 2018 02:58:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:8c4:0:0:0:0:0 with HTTP;
	Fri, 8 Jun 2018 02:57:48 -0700 (PDT)
From: jan vermaete <jan.vermaete@gmail.com>
Date: Fri, 8 Jun 2018 11:57:48 +0200
Message-ID: <CABF_=ygmbWRfWXcJKzmFt47jm9+pW4OGhCM1m-2-AO47qzKsRw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 11 Jun 2018 02:39:56 -0700
Subject: excluding the Proprietary source code from the archive
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
X-List-Received-Date: Fri, 08 Jun 2018 09:58:12 -0000
Content-Type: multipart/alternative; boundary="000000000000e1f435056e1e6f2f"

--000000000000e1f435056e1e6f2f
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a question about the licenses stuff of Yocto.  I hope this is the
correct place to ask.

I followed the instructions of the mega manual (chapter 7.32.3.1 Providing
the Source Code).

Added in my local.conf:
  INHERIT += "archiver"
  ARCHIVER_MODE[src] = "original"
  COPYLEFT_LICENSE_EXCLUDE="CLOSED Proprietary"

I have a recipe called x.bb, with 'LICENSE = "Proprietary"'

After a build of the image, there is the file
'build/deploy/licenses/x/recipeinfo' which holds the correct license
'LICENSE: Proprietary'

However, I still see the archive of the source code in 'build/deploy/source'


PS: I have DEPLOY_DIR = "${TOPDIR}/deploy"  in my local.conf file.  But
without, the result is the same.

br

--000000000000e1f435056e1e6f2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div>I have a question about the l=
icenses stuff of Yocto.=C2=A0 I hope this is the correct place to ask.<br><=
div><br></div><div>I followed the instructions of the mega manual (chapter =
7.32.3.1 Providing the Source Code).</div><div><br></div><div>Added in my l=
ocal.conf:</div>=C2=A0 INHERIT +=3D &quot;archiver&quot;<br>=C2=A0 ARCHIVER=
_MODE[src] =3D &quot;original&quot;<br>=C2=A0 COPYLEFT_LICENSE_EXCLUDE=3D&q=
uot;CLOSED Proprietary&quot;<br><div><br></div><div>I have a recipe called =
<a href=3D"http://x.bb">x.bb</a>, with &#39;LICENSE =3D &quot;Proprietary&q=
uot;&#39;</div><div><br></div><div>After a build of the image, there is the=
 file &#39;build/deploy/licenses/x/recipeinfo&#39; which holds the correct =
license &#39;LICENSE: Proprietary&#39;</div><div><br></div><div>However, I =
still see the archive of the source code in &#39;build/deploy/source&#39;</=
div><div><br></div><div><br></div><div>PS: I have=20
DEPLOY_DIR =3D &quot;${TOPDIR}/deploy&quot;=C2=A0

in my local.conf file.=C2=A0 But without, the result is the same.</div><div=
><br></div><div>br<br></div></div>

--000000000000e1f435056e1e6f2f--
