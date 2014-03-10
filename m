Return-Path: <jholzmayr@the-exact-steps.net>
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51D6DE00AD5
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 07:46:03 -0700 (PDT)
Received: from oxbsltgw54.schlund.de (oxbsltgw54.schlund.de [172.19.249.201])
	by mrelayeu.kundenserver.de (node=mreue005) with ESMTP (Nemesis)
	id 0LtBoV-1XKXCJ27r9-012qLh; Mon, 10 Mar 2014 15:45:56 +0100
Date: Mon, 10 Mar 2014 15:45:56 +0100 (CET)
From: Josef Holzmayr <jholzmayr@the-exact-steps.net>
To: Chris Larson <clarson@kergoth.com>
Message-ID: <1546298492.169828.1394462756484.open-xchange@email.1und1.de>
In-Reply-To: <CABcZANm94ynVoidZozpiwtreFthVaAFFG=+nE+pSA-kZaAoH5g@mail.gmail.com>
References: <1941676061.151463.1394449148860.open-xchange@email.1und1.de>
	<531D9C64.4010806@enea.com>
	<58476941.152432.1394449910667.open-xchange@email.1und1.de>
	<531D9FFA.7060407@enea.com>
	<1342303316.154219.1394451169246.open-xchange@email.1und1.de>
	<531DA573.5000408@dynamicdevices.co.uk>
	<791845630.156378.1394452936701.open-xchange@email.1und1.de>
	<CABcZANm94ynVoidZozpiwtreFthVaAFFG=+nE+pSA-kZaAoH5g@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.4.0-Rev29
X-Provags-ID: V02:K0:ewC+dEomsjpSVR6pXWe64s88XMBsMe7+r9jeQpcJ9/6
	IirJhBfUDaeynvjdrghUVnfzlIzZxnuQHpW2+wq6aQ9IqGQJKH
	na8DSlVQUDpZlu0h3QzVxoyTt3T0msdpwEBUUDujfBXX+YCdxx
	c2w4rS3IwIM5KDeYwr94TF3UvC8F9Jug2Hb24wQ4r7NUlE8GEq
	7Gt6+kqr8UCy4wrciE5AsAT/ZHy8wT5UfBY0xRuX9Y6Yt6pizA
	Vj+c5AVxzvEVwzh4L1PD2yEGztS4JZXkec7NnX1RwfofkQ4t41
	PzEx6ASCUoxH1VEnMBdMpeITKdfun5q1PlzOeiYtbkBo0EHfuc
	QzVnroiSUxGzwFjQ6IyYQ0ZabIOhlY+0t0w3dtHn7bO/VypaN1
	t1th5elOm0JlRcHA1NhIg2cTNg/8aydkAg=
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [RFC] Blubber, a tool to set up yocto/poky projects easily
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Josef Holzmayr <jholzmayr@the-exact-steps.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 10 Mar 2014 14:46:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Chris

> Chris Larson <clarson@kergoth.com> hat am 10. M=C3=A4rz 2014 um 15:40 ges=
chrieben:
>
>
> On Mon, Mar 10, 2014 at 5:02 AM, Josef Holzmayr <
> jholzmayr@the-exact-steps.net> wrote:
>
> > Hello Alex,
> >
> > > Alex J Lennon <ajlennon@dynamicdevices.co.uk> hat am 10. M=C3=A4rz 20=
14 um
> > 12:43
> > > geschrieben:
> >
> > > fwiw I'd have thought myself that string comparison should be string
> > > comparison (=3D=3D) as if you use an object identity comparison as a =
string
> > > comparison (is), you potentially introduce opaque problems when the
> > > strings are the same - i.e. same bytes of data - but the objects are =
not
> > > the same for whatever reason.
> >
> > I've interpreted it roughly the same so far, but they ValueError point
> > seems to
> > valid to me too (gah, I really know why I usually avoid dynamically typ=
ed
> > languages!). But the solution for me in this context seems to be then t=
o
> > use
> > something like:
> >
> > DUMMYSTRING =3D "foobar"
> > def safestringcompare(stra, strb):
> >=C2=A0 =C2=A0return type(DUMMYSTRING) =3D=3D type(stra) and type(stra) =
=3D=3D type(strb) and
> > stra
> > =3D=3D strb
> >
>
> Strings should be compared with =3D=3D, not is. And there's nothing that =
will
> explode if you compare against None with =3D=3D. Try it yourself.
>
> >>> "foo" =3D=3D None
> False

Yes. You're right. Makes me feel even worse about my python knowledge, but =
at
least it seems the topic is clarified now. Thanks for that!

Greetz
Josef/Leto

