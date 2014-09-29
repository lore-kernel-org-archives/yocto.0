Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FF02E00873; Mon, 29 Sep 2014 04:30:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D049E00869
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 04:30:36 -0700 (PDT)
Received: from [109.224.171.0] (port=57071
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1XYZ9x-0010q0-O1; Mon, 29 Sep 2014 12:30:32 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAALGJZbTYeiqynQm7_7igto48annBnKUSihFSNzHtn4QBfdxjA@mail.gmail.com>
Date: Mon, 29 Sep 2014 12:30:29 +0100
Message-Id: <8AB8D694-3A44-470B-BAB8-2BE7C562C537@keylevel.com>
References: <AD958144-D4EB-42F9-B6C9-D391C7D9A84C@keylevel.com>
	<CAALGJZbTYeiqynQm7_7igto48annBnKUSihFSNzHtn4QBfdxjA@mail.gmail.com>
To: Christian Ege <k4230r6@gmail.com>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: PR and bbappend files
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
X-List-Received-Date: Mon, 29 Sep 2014 11:30:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 29 Sep 2014, at 08:52, Christian Ege <k4230r6@gmail.com> wrote:

> Hi,
> 2014-09-28 11:47 GMT+02:00 Chris Tapp <opensource@keylevel.com>:
>> I'm currently using a bbappend file to patch bash under 'danny' due =
to "Shellshocked" - basically by adding patches 11..50 to the SRC_URI.
>>=20
>> However, patches are still coming out ;-)
>>=20
>> How do I make sure that new ones get reflected in the build? I would =
normally bump PR in a .bb file, but I don't think a .bbappend should be =
changing this?
> For danny you can use PRINC
> =
http://www.yoctoproject.org/docs/1.3.2/poky-ref-manual/poky-ref-manual.htm=
l#var-PRINC
> For newer releases this is deprecated.
>=20
> Could you please be so kind and share your bbappend + patches?

Sure - I'll make this public after I finish work today.

> Is there any chance to get this in the official poky branches?
>=20
>=20
> regards,
> Christian
>>=20
>> --
>>=20
>> Chris Tapp
>> opensource@keylevel.com
>> www.keylevel.com
>>=20
>> ----
>> You can tell you're getting older when your car insurance gets real =
cheap!
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
> --=20
> http://project-magpie.github.io/

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!








