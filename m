Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E39E0E0071C; Sun, 25 Dec 2016 20:06:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.43 listed in list.dnswl.org]
Received: from mail-pg0-f43.google.com (mail-pg0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A25C6E0048B
	for <yocto@yoctoproject.org>; Sun, 25 Dec 2016 20:06:54 -0800 (PST)
Received: by mail-pg0-f43.google.com with SMTP id i5so65756926pgh.2
	for <yocto@yoctoproject.org>; Sun, 25 Dec 2016 20:06:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=R0s/J48cqKZipvOO0eUEw9VF8kl0LLe001M30gD/Smk=;
	b=LsTfBqMlisITQnmn5dUaUh3uBTe+nHhHQ2i70iOJf53D6INnSiFeP2f+ywazGdA6zv
	Qws8mS28CjWEyFtVViRt6M0EDfS5tkPBBnhveXHDpcorotfEsoVRlezdV7a7yJP5scHA
	SRcF0CMKPozLo2JW6lchIjmyc9y5dRyZmygKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=R0s/J48cqKZipvOO0eUEw9VF8kl0LLe001M30gD/Smk=;
	b=SyKZywC/Mf51czUdHGGh3FYv6QXksTetM5z6+oElaycCwcok5otysxtJFqav1uynYI
	vaEv09G1dNZYeQ4cxoywpOfFe7LSN9BT8OFMZ78LInmDbfYIr9M8CfFKDiJXbOSG/+Im
	iY849blES4nwG3ZOmIQ3nlViTQkdExn98V7LjE0RZWlDwl2dPenVI3K1j7BKH01rJZ8+
	OANGvfO5Kk3dfm8aRr8NZuLXSdmRCeXYQtS0JFqI4Zhy93dyjeeWwV6gL4jJmeXZDLBy
	7NtLozEu4EGFavbhD3trCJlyaAcpIIkFuclDezLXKSEUv+b3BhxdrEYsczCZmvMtBNE/
	egNg==
X-Gm-Message-State: AIkVDXKJdW9yBRmrol/v9cSo8hE6udmpLER5zO5lSRFXzg4F3IOK63hCWWz1KGCqq9w0+3R1
X-Received: by 10.98.75.75 with SMTP id y72mr18694153pfa.23.1482725214045;
	Sun, 25 Dec 2016 20:06:54 -0800 (PST)
Received: from yct-lpt.lan (50-39-165-77.bvtn.or.frontiernet.net.
	[50.39.165.77]) by smtp.gmail.com with ESMTPSA id
	q190sm37809398pfb.51.2016.12.25.20.06.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Dec 2016 20:06:52 -0800 (PST)
To: openembedded-devel@lists.openembedded.org,
	bitbake-devel@lists.openembedded.org,
	yocto-infrastructure@yoctoproject.org, yocto@yoctoproject.org
References: <CAHQecY48gVbt4S+88MHivSbv-Xdn29WRq5RPL6+QDVGYUPCwYw@mail.gmail.com>
	<E628426E-84F8-4EA4-A296-D32C3339DF1C@gmail.com>
	<CAHQecY4oXXwGeLsdXrgjFmouTiwvsJXa6K1Qbp--9WZ0=3O5CQ@mail.gmail.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Organization: Linux Foundation
Message-ID: <74b16359-8b63-4f34-b9b7-618bd8aa4cb6@linuxfoundation.org>
Date: Sun, 25 Dec 2016 20:06:50 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAHQecY4oXXwGeLsdXrgjFmouTiwvsJXa6K1Qbp--9WZ0=3O5CQ@mail.gmail.com>
Subject: Re: [oe] Infra Full Stop 12/26-12/29
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
X-List-Received-Date: Mon, 26 Dec 2016 04:06:59 -0000
X-Groupsio-MsgNum: 33586
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="G0Te5ffCPFULSUrNKPVioCe1IhmMF47fO"

--G0Te5ffCPFULSUrNKPVioCe1IhmMF47fO
Content-Type: multipart/mixed; boundary="hGHMl4sm8WLEwn8j8M6ClWp8pHbmKlLKT";
 protected-headers="v1"
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: openembedded-devel@lists.openembedded.org,
 bitbake-devel@lists.openembedded.org, yocto-infrastructure@yoctoproject.org,
 yocto@yoctoproject.org
Message-ID: <74b16359-8b63-4f34-b9b7-618bd8aa4cb6@linuxfoundation.org>
Subject: Re: [oe] Infra Full Stop 12/26-12/29
References: <CAHQecY48gVbt4S+88MHivSbv-Xdn29WRq5RPL6+QDVGYUPCwYw@mail.gmail.com>
 <E628426E-84F8-4EA4-A296-D32C3339DF1C@gmail.com>
 <CAHQecY4oXXwGeLsdXrgjFmouTiwvsJXa6K1Qbp--9WZ0=3O5CQ@mail.gmail.com>
In-Reply-To: <CAHQecY4oXXwGeLsdXrgjFmouTiwvsJXa6K1Qbp--9WZ0=3O5CQ@mail.gmail.com>

--hGHMl4sm8WLEwn8j8M6ClWp8pHbmKlLKT
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

In preparation for the scheduled maintenance I have moved
git.openembedded.org to a new server temporarily. E-mail and Patchwork
hooks may not work correctly. All other git operations as well as
listings at http://git.openembedded.org/ should continue working.

If you have a git remote pointed directly at openembedded.org it will
fail. Please update your remote to point at git.openembedded.org and try
again.

Other services that will stay up during the maintenance are:

Layerindex https://layers.openembedded.org/
Mailman http://lists.openembedded.org/
Patchwork https://patchwork.openembedded.org/

I'd like the share my appreciation for the OpenEmbedded volunteer
sysadmins who are taking time away from their holiday celebrations to
make this downtime as convenient for the rest of us as possible.


On 12/22/2016 09:19 AM, Tom King wrote:
> Schedule is  06:00UTC 27DEC16 for the full stop.  Things will start com=
ing
> back (estimated) about 48hrs later.
>
> Tom
>
> On Tue, Dec 20, 2016 at 11:16 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>>> On Dec 20, 2016, at 10:50 AM, Tom King <ka6sox@gmail.com> wrote:
>>>
>>> Hi All,
>>>
>>> We have been looking for a time when we could do a full stop of the i=
nfra
>>> to upgrade some bits and clear out some faults.
>>>
>>> This will involve shutting down the main machine that we use for *mos=
t*
>> of
>>> the OE infra.
>>>
>>> Our goal is to put up a backup git master but other services such as:=

>> wiki,
>>> patches, etc will be offline for some or all of that period.
>>>
>>> We have delayed doing this much needed maintenance to try to work aro=
und
>>> Yocto and OE release schedules and it is necessary that we take this =
time
>>> to do the work.
>>>
>> I guess, you need to come up with a tentative down-time schedule.
>>
>>> Tom
>>> (for the OE Infra Team)
>>> --
>>> _______________________________________________
>>> Openembedded-devel mailing list
>>> Openembedded-devel@lists.openembedded.org
>>> http://lists.openembedded.org/mailman/listinfo/openembedded-devel
>> --
>> _______________________________________________
>> Openembedded-devel mailing list
>> Openembedded-devel@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/openembedded-devel
>>

--=20
Michael Halstead
Linux Foundation / SysAdmin



--hGHMl4sm8WLEwn8j8M6ClWp8pHbmKlLKT--

--G0Te5ffCPFULSUrNKPVioCe1IhmMF47fO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJYYJdbAAoJEGpkljW6QlqVmuQP/j9rqDXE6QBpYP34ycYWcCWF
M7JRwEHsCe/PdR1VNrRJq7XTQy21zYKmBGf3NkWUUwWWvsXaXQ1vxuUGTVBsXMLt
m+fCak6zwQhcTRV5qGnwIow3Pze0G4QHsRx8FUKGbTksLXTG01OzNfIL0TCmO38s
qOmNrtBhP5Jc/mJMuLGDLDlx9KodoVAr8vVxqM/aTj6PvbtZYoJeIxCGEgdhyyj0
IAOA+1xvH/RMrtzL/oTOa9KKYHbGRaF5aZou8M+M4JaGQTma+oPb07dS8annYBdU
S0/8Wu0c1v0AoepW6ENkR1g1YLZH+9QNekrFlhiTDp95iVhap0mq2nP1t8kX2i/x
zDKD1rBow0pii9qz0/ixfsoRSn1J9ehfifo/g4tqOaJTqNPkxDelceD4JpOOX8Dj
gUh+TtHOmZnGvTESyzjsNNVuByqdXwLgJXYW7WcksUu94yk+nj6n3b9eWMRMGVsj
Q9snNncX/JiJmBSdEEIr9eFqJi0+ON5hkj7HK19jPFfrqA6hHdICH0Wt1zecPoHN
eLMI2cToaJ1YjZYElo0cldf8jwBjT13rS7tt+rHg+B/IHnM6oCblF6kB99/WtNeI
z41qhnAbwZsskcUTcMRdtLg5Km4qjSr8dCU6fiGif76GUe/1s8oJWzoihtqTcYY0
6xWgTf7YPevOsMFSj1Zp
=SX9n
-----END PGP SIGNATURE-----

--G0Te5ffCPFULSUrNKPVioCe1IhmMF47fO--
