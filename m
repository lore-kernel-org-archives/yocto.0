Return-Path: <eddy.lai.tw@gmail.com>
Received: from mail-vb0-f45.google.com (mail-vb0-f45.google.com
	[209.85.212.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33823E00726
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 15:11:01 -0800 (PST)
Received: by mail-vb0-f45.google.com with SMTP id p1so6958827vbi.18
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 15:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:importance:date:message-id:subject:to
	:content-type; bh=ZGAnaPSXQqhP8xv6ciACv/IbeXeo4gB+Y7P+ywaUD7I=;
	b=XFuztmw81oZdDmGotnn3yaOqKG4/wVFaQrpMp86ZK5NJ/Srxsd+aROcWC9ns1+cRZu
	XEFAbh1kG6cZevJOktxWiWS8OQfrtPcDuwOpY9bJB8b8+xcPOGvWfH6v3kJ8JvNWUMdx
	tx11VAIcFtStxuyEOiqTqEaj1c3rVLWlyEzBOA1RcllW2ZxP8idnAdPYNEurSV2MBIyW
	NhvAXOweXHeKpskfDWL3nwG5gwnP6d8blMHHR8PYBn64GymPhNeOaLWnUr6G+WvDAujC
	QwuLZUGoqVY29zs3V6LqUy9WvS7ExmuI90L1eoeW6JmwDj8WmkLQs8RYfS0ohlYf5Nph
	P+ww==
Received: by 10.52.66.18 with SMTP id b18mr26078852vdt.43.1356304260480; Sun,
	23 Dec 2012 15:11:00 -0800 (PST)
MIME-Version: 1.0
From: Lai Eddy <eddy.lai.tw@gmail.com>
Importance: Normal
Date: Sun, 23 Dec 2012 23:10:55 +0000
Message-ID: <-2529861647849882481@unknownmsgid>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: no /tmp/work/../linux-standard-build source output
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
X-List-Received-Date: Sun, 23 Dec 2012 23:11:01 -0000
Content-Type: multipart/alternative; boundary=20cf3071d0a6a73f7904d18d31a6

--20cf3071d0a6a73f7904d18d31a6
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,

I=92m using yocto 1.3 (poky-8.0) with jasperforest BSP,
sometimes =93bitbake core-image-minimal=94 did create files in
/tmp/work/xxx-poky-linux/linux-yocto-xxx/linux-xxx-standard-build , but
always create new image in /tmp/deploy/image folder (file date time is new)
every =93bitbake core-image-minimal=94 build finished with successfully, wh=
y
there=92s no source files in the linux-xxx-standard-build? will the content
of the /tmp/deply/image build with previous-built binarys?

Eddy Lai / NCUT Taiwan

--20cf3071d0a6a73f7904d18d31a6
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html><head><style>
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph {
margin-top:0in;
margin-right:0in;
margin-bottom:0in;
margin-left:.5in;
margin-bottom:.0001pt;
}

p.MsoListParagraphCxSpFirst, li.MsoListParagraphCxSpFirst, div.MsoListParag=
raphCxSpFirst, p.MsoListParagraphCxSpMiddle, li.MsoListParagraphCxSpMiddle,=
 div.MsoListParagraphCxSpMiddle, p.MsoListParagraphCxSpLast, li.MsoListPara=
graphCxSpLast, div.MsoListParagraphCxSpLast {
margin-top:0in;
margin-right:0in;
margin-bottom:0in;
margin-left:.5in;
margin-bottom:.0001pt;
line-height:115%;
}
</style></head><body><div style=3D"font-family:&#39;Microsoft JhengHei UI&#=
39;,Calibri,&#39;Segoe UI&#39;,Meiryo,&#39;Microsoft YaHei UI&#39;,&#39;Mal=
gun Gothic&#39;,&#39;Khmer UI&#39;,&#39;Nirmala UI&#39;,Tunga,&#39;Lao UI&#=
39;,Ebrima,sans-serif;font-size:16px">
<div>Hi,</div><div>=A0</div><div>I=92m using yocto 1.3 (poky-8.0) with jasp=
erforest BSP,</div><div>sometimes=A0=93bitbake core-image-minimal=94 did cr=
eate files in /tmp/work/xxx-poky-linux/linux-yocto-xxx/linux-xxx-standard-b=
uild , but always create new image in /tmp/deploy/image folder (file date t=
ime is new)</div>
<div>every=A0=93bitbake core-image-minimal=94 build finished with successfu=
lly, why there=92s no source files in the linux-xxx-standard-build?=A0will =
the content of the /tmp/deply/image build with=A0previous-built=A0binarys?=
=A0</div><div>
=A0</div><div>Eddy Lai / NCUT Taiwan</div></div></body></html>

--20cf3071d0a6a73f7904d18d31a6--
