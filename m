Return-Path: <gmshastri@gmail.com>
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 771D5E00496
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 01:21:24 -0800 (PST)
Received: by mail-lb0-f170.google.com with SMTP id ge1so1182097lbb.29
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 01:21:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=wTafwsSjwpcCTXBx+ebEExXaABiA5wmqdg0YHFsTOC0=;
	b=0zgWi0eVu+NlejVNgUOLnYwvPf2Y6KDWYS1WZHFYIyCtGbFblBBw74MHRkY6nTow5y
	GXjT3Dpul0ezd0qM1kG8ms43kP/5kqKTqKO4vz+k4aAL0FNdXM8A1qhspDn1DIzEBw/b
	i1Q+BK1zGW/6W1od2koSZTz1GP3KhiD63QvuSpU1NRdK5mNo0OhiM5trnQEiHaoZXvX+
	vLv4QC1EEb9VMTvJ0doAW0NFniOJs4yNjaUQiyxUVyLzm9/AQ2ATbxVtxLGwG21eSm18
	Xs6B/JiJG2KXEuSKYc3Ws57OfTJOfQ8Y2Xu9pR3WFGrloU/o58rcV1CJDKCBlSA76ol5
	um1g==
MIME-Version: 1.0
X-Received: by 10.152.128.98 with SMTP id nn2mr1386513lab.17.1362734482046;
	Fri, 08 Mar 2013 01:21:22 -0800 (PST)
Received: by 10.114.98.66 with HTTP; Fri, 8 Mar 2013 01:21:21 -0800 (PST)
Date: Fri, 8 Mar 2013 14:51:21 +0530
Message-ID: <CAE_REAuOnhUG7GOgJHzSbGjrEyjKj8ApZ3J6W1=PtwZd2TM1Mg@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: yocto@yoctoproject.org
Subject: Regarding Licensing of "mbsalign.c" available in util-linux-2.21.2 version (Yocto-1.3-Danny)
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
X-List-Received-Date: Fri, 08 Mar 2013 09:21:24 -0000
Content-Type: multipart/alternative; boundary=f46d042c6423b9c53d04d7665884

--f46d042c6423b9c53d04d7665884
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

I have some concerns regarding util-linux-2.21.2 version . As per Yocto-1.3
(danny) recipe,
{{{

LICENSE_${PN}-lscpu = "GPLv3+"  <-- util-linux_2.21.2.bb

LICENSE = "GPLv2+ & LGPLv2.1+ & BSD"   <-- util-linux.inc

}}}

So as per the above description, only lscpu is GPLv3.

But while looking into the source of util-linux-2.21.2, I found out that
"util-linux-2.21.2/lib/mbsalign.c" is GPLv3 and it is used by following
binaries while building:
{{{
  -  fdisk
  -  partx
}}}

So does it mean that the above binaries should also be GPLv3 and need to
take care in util-linux.{bb,inc} ???

Regards,
Gaurang Shastri

--f46d042c6423b9c53d04d7665884
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,<br><br>I have some concerns regarding util-linux-2.21.2 version . A=
s per Yocto-1.3 (danny) recipe,<br>{{{<br><br>LICENSE_${PN}-lscpu =3D &quot=
;GPLv3+&quot;=A0 &lt;-- <a href=3D"http://util-linux_2.21.2.bb">util-linux_=
2.21.2.bb</a><br>
<br>LICENSE =3D &quot;GPLv2+ &amp; LGPLv2.1+ &amp; BSD&quot;=A0=A0 &lt;-- u=
til-linux.inc<br><br>}}}<br><br>So as per the above description, only lscpu=
 is GPLv3. <br><br>But while looking into the source of util-linux-2.21.2, =
I found out that &quot;util-linux-2.21.2/lib/mbsalign.c&quot; is GPLv3 and =
it is used by following binaries while building:<br>
{{{<br>=A0 -=A0 fdisk <br>=A0 -=A0 partx<br>}}}<br><br>So does it mean that=
 the above binaries should also be GPLv3 and need to take care in util-linu=
x.{bb,inc} ???<br><br>Regards,<br>Gaurang Shastri<br>

--f46d042c6423b9c53d04d7665884--
