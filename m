Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A413E00978; Mon, 15 Jun 2015 07:21:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D0DEE00960
	for <yocto@yoctoproject.org>; Mon, 15 Jun 2015 07:21:07 -0700 (PDT)
Received: by wiwd19 with SMTP id d19so76738209wiw.0
	for <yocto@yoctoproject.org>; Mon, 15 Jun 2015 07:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=qRatk0PgkLV9KiUdsNfLDg0jPAuAiO4FQG2U5tPw3YM=;
	b=mM3chp1uUCeLv8GHqWtyh/pQ2WZ8xQTkXqqWN+fQcuvubT+N58DRFyVHbqYuVIGNbR
	Iu2Ax4IDTYpaQ4HHrxJX6PyIhHdD/N3xJA5/nXpSyOAmCua4Rp0z6FUeYD/MIYJAfjtG
	GCc0TLN7miP1WblwIyWE4tcMgpM9/uO8pFelVojDwkw79clgRuOIKEoHETbS6a/wZc+/
	kfOx98+iMd9M4svs+o6EAqn48xGJK4IkL66dLA6/DKYbqD1k20RcEg3f/qbpMFagQq3T
	FM/YW4/U1T+LGbU/NyWZLcwZVDFMyQqZi+hmUEkXH6F7aQWvczTJk4dXs1Yr8i91bn/r
	NhCw==
X-Received: by 10.194.78.110 with SMTP id a14mr52948819wjx.87.1434378066784;
	Mon, 15 Jun 2015 07:21:06 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by mx.google.com with ESMTPSA id hn7sm16087075wib.5.2015.06.15.07.21.06
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 15 Jun 2015 07:21:06 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 15 Jun 2015 16:21:10 +0200
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20150615142110.GC2398@jama>
References: <557ED498.50406@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <557ED498.50406@mlbassoc.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: sstate black hole?
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
X-List-Received-Date: Mon, 15 Jun 2015 14:21:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 15, 2015 at 07:35:20AM -0600, Gary Thomas wrote:
> I'm working with i.MX6 targets (meta-fsl-arm*).  For these
> targets, some packages are "special" in that they use i.MX6
> specific graphics support.  This ends up with an additional
> layer of stratification, so my tmp/work tree has:
>    all-amltd-linux
>    cortexa9hf-vfp-neon-amltd-linux-gnueabi
>    cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi
>    teton_p0382-amltd-linux-gnueabi
>    x86_64-amltd-linux-gnueabi
>    x86_64-linux
>=20
> The packages that are built in tmp/work/cortex* are architecture
> specific, not target specific, hence my question:
>=20
>    If I build for two i.MX6 targets, identical in every way
>    except for the ${MACHINE} name, if I use sstate to share
>    the builds from target A when building for target B, why
>    are the packages built in cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnuea=
bi
>    not shared by sstate?  I can see that they are present in
>    the sstate cache, but they are always rebuilt for target B.
>    I consider this incorrect behaviour as these are the same
>    architecture and so they should be sharable via sstate.
>=20
> Am I missing something here?  How can I determine why the
> package from target A (sstate cache) is not usable by target B?

Use openembedded-core/scripts/sstate-diff-machines.sh to check if the
signatures of the recipes you expect to be re-used are the same.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

