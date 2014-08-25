Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 340C0E006B5; Mon, 25 Aug 2014 13:05:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEEFBE004FF
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 13:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=xv1fDdn7nd/G2siEJOhnI1Eu59s3OSAXkJIMfRK1lYs=; 
	b=gGt8uI+9eqQ7ViK9wOD9wclLMi5IaIUE7tpfntTBC38RP/1K0VbcHEgbZwimvY0ObRl1GMIZvxeBiaZGm7JAS/JPOVLLSKL57FfdHF5AvYnFZdYqO3kSwCB6qwWar5No9U4i/Fx8ICuOKZ9sbrEVNlKONGQ/Z7A3fLtreBisbZQ=;
Received: from [109.224.171.0] (port=42915
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1XM0Vn-001GZF-KU; Mon, 25 Aug 2014 21:05:09 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <4829846.nEKDNArLxY@localhost.localdomain>
Date: Mon, 25 Aug 2014 21:05:09 +0100
Message-Id: <B4BC56A9-7263-4DC2-9EBE-3098F8BED54D@keylevel.com>
References: <07EF1EFB-2454-4D8A-A1FC-3B2C3E8F85AD@keylevel.com>
	<4829846.nEKDNArLxY@localhost.localdomain>
To: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
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
Cc: yocto@yoctoproject.org
Subject: Re: Unexpected redirection error in script
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
X-List-Received-Date: Mon, 25 Aug 2014 20:05:21 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 25 Aug 2014, at 18:07, Maciej Borzecki <maciej.borzecki@open-rnd.pl> =
wrote:

> On Monday 25 of August 2014 17:50:00 Chris Tapp wrote:
>> I've previously used expressions of the form:
>>=20
>>   IFS=3D. read -r $a $b $c $d <<< "$IP"
> try:
>=20
> echo "$IP" | IFS=3D. read -r a b c d
>=20
>>=20
>> to split an IP address into its octets.
>>=20
>> However, when I try this for generic_pc under daisy I get an =
"Unexpected
>> redirection" error.
>>=20
>> Is this to do with the Busybox version/configuration or something =
else?
> Busybox uses ash shell. Bash tricks like this won't work.

Thanks - I hadn't spotted that the Cedartrail BSP links /bin/sh to =
/bin/bash and not the Busybox binary.

> --=20
>=20
> Maciej Borz=C4=99cki=20
> Senior Software Engineer Open-RnD Sp. z o.o.=20
> www.open-rnd.pl, Facebook, Twitter=20
> mobile: +48 telefon, fax: +48 42 657 9079=20
>=20
> Niniejsza wiadomo=C5=9B=C4=87 wraz z za=C5=82=C4=85cznikami mo=C5=BCe =
zawiera=C4=87 chronione prawem lub=20
> poufne informacje i zosta=C5=82a wys=C5=82ana wy=C5=82=C4=85cznie do =
wiadomo=C5=9Bci i u=C5=BCytku os=C3=B3b, do=20
> kt=C3=B3rych zosta=C5=82a zaadresowana. Je=C5=9Bli wiadomo=C5=9B=C4=87 =
zosta=C5=82a otrzymana przypadkowo=20
> zabrania si=C4=99 jej kopiowania lub rozsy=C5=82ania do os=C3=B3b =
trzecich. W takim przypadku=20
> uprasza si=C4=99 o natychmiastowe zniszczenie wiadomo=C5=9Bci oraz =
poinformowanie=20
> nadawcy o zaistnia=C5=82ej sytuacji za pomoc=C4=85 wiadomo=C5=9Bci =
zwrotnej. Dzi=C4=99kujemy.=20
>=20
> This message, including any attachments hereto, may contain privileged =
or=20
> confidential information and is sent solely for the attention and use =
of the=20
> intended addressee(s). If you are not an intended addressee, you may =
neither=20
> use this message nor copy or deliver it to anyone. In such case, you =
should=20
> immediately destroy this message and kindly notify the sender by reply =
email.=20
> Thank you.

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com





