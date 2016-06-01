Return-Path: <diego.ml@zoho.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50925E0049B; Wed,  1 Jun 2016 09:15:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.ml[at]zoho.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.201.84.153 listed in list.dnswl.org]
Received: from sender153-mail.zoho.com (sender153-mail.zoho.com
	[74.201.84.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E14AE0045E
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2016 09:15:48 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=zapps768; d=zoho.com; 
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to:references:mime-version:content-type;
	b=IrOSUKs4et9wUWVKA5OuFlW3QbejZQP9B38zE0lj9jzbSApriG3yH/mncHI2tOnjejhFqSbKIpnx
	OZls/50P9cwZ1k4TVED7utmzIpTNJo1GkXTeZ67Mgrh4UqiD5j7l  
Received: from ip-192-168-197-87.eu-west-1.compute.internal
	(host65-246-static.10-188-b.business.telecomitalia.it
	[188.10.246.65]) by mx.zohomail.com
	with SMTPS id 1464797731638381.42574789755736;
	Wed, 1 Jun 2016 09:15:31 -0700 (PDT)
From: Diego <diego.ml@zoho.com>
To: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
Date: Wed, 01 Jun 2016 18:15:27 +0200
Message-ID: <2192667.NjFLBh3Ny5@ip-192-168-197-87.eu-west-1.compute.internal>
User-Agent: KMail/4.14.10 (Linux/4.4.9-300.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAEeWubLNuGrjFA1ydAkbi_hDu=P7T4nwkrDL2Ws0cvKRk8WHxQ@mail.gmail.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<16838317.pTU33ZpYG7@peggleto-mobl.ger.corp.intel.com>
	<CAEeWubLNuGrjFA1ydAkbi_hDu=P7T4nwkrDL2Ws0cvKRk8WHxQ@mail.gmail.com>
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Per image customizations
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
X-List-Received-Date: Wed, 01 Jun 2016 16:15:52 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

In data mercoled=EC 1 giugno 2016 15:25:09, Oleksandr Poznyak ha scritt=
o:
> Don't forget to add your fstab/inittab files into CONFFILES_${PN} cau=
se if
> the package that includes them will be changed and You'll update it v=
ia
> package system, your POSTPROCESS hacks will be overwritten.
>=20
> Anyway, its better to avoid POSTPROCESS if possible.
> 1) Create *.bbappend recipe base-files_%s.bbappend in your layer. It
> appends to poky "base-files" recipe.
> 2) Create your own "python do_package_prepend" function where you sho=
uld
> make your recipe produce two different packages
> 3) Add them to DEPENDS in your image recipe
>=20

Hi Oleksandr,

your approach is really interesting, but I'm unsure how to proceed with=
 step=20
2) of your list.

I've added the following in the bbappend:

python do_package_prepend() {
    d.setVar('PACKAGES', "${PACKAGES} ${PN}-fstab-regular ${PN}-fstab-f=
lash")
}

which creates the two additional packages, but then I'm confused on how=
 to=20
manage the two 'variant' fstab files. The FILES variable doesn't suppor=
t=20
"source -> destination", so how do I manage the fact that two different=
 files=20
need to go to the same destination path?

An easier option would be to remove fstab in the base-files_%s.bbappend=
, and=20
create 2 different .bb recipes for the 2 fstab files.

Thanks anyhow for your help,
Diego


