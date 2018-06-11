Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86BB4E01CD4; Tue, 12 Jun 2018 11:02:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00, DATE_IN_PAST_12_24, 
	MIME_QP_LONG_LINE, RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.154 listed in list.dnswl.org]
	* 1.0 DATE_IN_PAST_12_24 Date: is 12 to 24 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout1.han.skanova.net (v-smtpout1.han.skanova.net
	[81.236.60.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59BBAE01CD4
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 11:02:36 -0700 (PDT)
Received: from [10.175.196.108] ([37.123.169.62]) by cmsmtp with ESMTPA
	id SncnfOZvn19K9SncpfwXa1; Tue, 12 Jun 2018 20:02:35 +0200
From: Ulf Samuelsson <yocto@emagii.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 11 Jun 2018 21:16:27 +0200
Message-Id: <25AD44CC-F807-4984-9ABF-A6BB32DC0EE6@emagii.com>
References: <CAOsp8o_KM7ZtmscjePc+E55-aZZBevV5pd=sWRWmkV5c8YTaYw@mail.gmail.com>
In-Reply-To: <CAOsp8o_KM7ZtmscjePc+E55-aZZBevV5pd=sWRWmkV5c8YTaYw@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
X-Mailer: iPad Mail (15B202)
X-CMAE-Envelope: MS4wfGOzs7J0Ir5bizSkT7i7XOA34T5B7ABiMYn8pXqgsGc0/9moD99jXYWISh9hpYAQioB//ii23whuNxLQ6z38UmtEi8At+oTEiFy4FDDNsBT7iKu2kAXv
	4YFhIjEdnOw5kMPntnaNxhDyuY8sgVI+Ita/RBLPJC1eDJZgtIKmoLgngeRXkCF0C2mZ3g38y2Cp4sIQwlgaojIkWz2cyJVrlA8=
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Generating license/manifest for a specific layer?
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
X-List-Received-Date: Tue, 12 Jun 2018 18:02:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I have been working on a release-notes bbclass which will for each recipe in=
cluded in am image extract stuff like package name, license info, cve info, S=
UMMARY, DESCRIPTION etc. and generate LaTex files.
repo diffmanifests is used to extract the difference between a previous mani=
fest and the current manifest.=20
Each patch committed has a JIRA ticket number, and a LaTex file is generated=
 with a symbolic link to our JIRA server.
Everything is collected by a separate project, and once the LaTex files are c=
omplete,
I only have to do=20
make <product>-release-notes.pdf.

Once it is merged locally, I am considering upstreaming.

Best Regards,
Ulf Samuelsson

> 11 juni 2018 kl. 15:46 skrev Michael Habibi <mikehabibi@gmail.com>:
>=20
> Our use case is to capture the license files, manifest (package/version), a=
nd download information only for packages we modify/add. We use our own laye=
r to modify/add packages, everything coming from standard Yocto layers are u=
ntouched.
>=20
> Is there a way to generate this information on a layer-by-layer basis, ins=
tead of a full manifest that includes all standard, unmodified packages?
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


