Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EC0AE0088A; Mon, 20 Oct 2014 19:31:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D7E4E00849
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 19:31:30 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id ey11so328191pad.41
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 19:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=cIVbefDYQkMivwYFCxiMXnXmutTJMrAir4047yinsaE=;
	b=T+boY3YvUqfOpPnpaV7HcWs7gq6TBM6PMUZYdzAiIeGhQ+WbU1dnIZxn2cGQrWZqeJ
	zm+EckHAgJEUTqb1/cZz5bs1f0ZG5yVea0N0km8qAnI7+55cU6tzDVh+/xwvkXX0ZPsp
	Tw6uLY0Y8TB8X7A5SXlMDBVpYerDN8TY2vwlc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:message-id:date:from:user-agent
	:mime-version:to:cc:subject:references:in-reply-to:content-type;
	bh=cIVbefDYQkMivwYFCxiMXnXmutTJMrAir4047yinsaE=;
	b=YXmXzBqeJGReVelyKPxCD5hHkg/Gq5AGXQdCVGoWj841hMgc21d3mJwDxnpWYJF0jy
	pZ0dHjkQwr4FGYGRVDe/xKeoyCQhNDin5WXgBCZ2PbiDKqZp7rdfZTFKGR6XhTRJzZ7L
	blGlIiT8UMGkYnQoyDLSAFHkouTLlyHPqBw9zyoAKEMdBjH2qCJdfPsuoDnBtelIzClN
	Dl80FCZSxFShvrjlR7lUiQ0+9ssR3fgMfsdZrqWbZ4ihk9sdgv1zB13Jyt1eOVMWMRWm
	nJTiWWzmggLfP+HfMHroUwFzpq4iyTJmAMsV1Io9hxYz8IFxx6AnbsD2/j3y2pvNHkx1
	qvTg==
X-Gm-Message-State: ALoCoQmPU2MrHXPkkrpV5DXterr8u4XkzCGtYFZzRbAP9CmsbXJK7Tv+iZkQxRncBIytN/kEJjGS
X-Received: by 10.68.167.99 with SMTP id zn3mr31762925pbb.30.1413858689983;
	Mon, 20 Oct 2014 19:31:29 -0700 (PDT)
Received: from [192.168.17.115] (static-50-43-33-119.bvtn.or.frontiernet.net.
	[50.43.33.119]) by mx.google.com with ESMTPSA id
	db7sm10384923pdb.27.2014.10.20.19.31.28 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 20 Oct 2014 19:31:28 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <5445C579.50406@yoctoproject.org>
Date: Mon, 20 Oct 2014 19:31:21 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>, 
	Paul Barker <paul@paulbarker.me.uk>,
	"Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>, 
	"Zhao, Yi (Wind River)" <yi.zhao@windriver.com>
References: <20141012005156.D66DC2C0219@ubuntu1204.osl.yoctoproject.org>
	<CANyK_8fVecgg=pZnV9fwqz=YB3OM9mmm2MN4JD=L0ct15qKBpQ@mail.gmail.com>
	<544435BD.4080001@yoctoproject.org>
	<D06A908D.C746%alexandru.c.georgescu@intel.com>
In-Reply-To: <D06A908D.C746%alexandru.c.georgescu@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Release Candidate Build for yocto-1.7.rc4 now available.
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
X-List-Received-Date: Tue, 21 Oct 2014 02:31:41 -0000
X-Groupsio-MsgNum: 21877
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="Xn2ph7RhL0KPW5433wm74j37pAOw2mW8n"

--Xn2ph7RhL0KPW5433wm74j37pAOw2mW8n
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

You were both already in the CC list. You should receive copies when the
next release candidate is built.

Michael Halstead
Yocto Project / System Administrator

On 10/20/2014 12:13 AM, Georgescu, Alexandru C wrote:
> Hi Michael,
> Can you add me and Yi on the CC as well?
>
> Thanks,
> --
> Alexandru Georgescu
> Yocto QA Engineer
> SSG/SSD Open Source Technology Center Romania
>
>
>
>
> On 20/10/14 01:05, "Michael Halstead" <michael@yoctoproject.org> wrote:=

>
>> The QA_MAIL_CC value in ./config/autobuilder.conf needed to be comma
>> separated. I think it is fixed now.
>>
>> Thanks for the report.
>>
>> Michael Halstead
>> Yocto Project / SysAdmin
>>
>> On 10/12/2014 04:33 AM, Paul Barker wrote:
>>> On 12 October 2014 01:51, Poky Build User
>>> <pokybuild@ubuntu1204.osl.yoctoproject.org> wrote:
>>>> This is an automated message from
>>>> The Yocto Project Autobuilder
>>>> Git: git://git.yoctoproject.org/yocto-autobuilder
>>>> Email: elizabeth.flanagan@intel.com
>>> Beth,
>>>
>>> I noticed that the Cc list for the original email looks to be corrupt=
ed:
>>>     Cc: ""@ossystems.com.bryi.zhao, elizabeth.flanagan@intel.comyocto=
,
>>>          ""@windriver.com, ""@yoctoproject.orgalexandru.c.georgescu,
>>>          ""@intel.comotavio
>>>
>>> Just letting you know incase you missed this and it needs attention,
>>>
>>
>



--Xn2ph7RhL0KPW5433wm74j37pAOw2mW8n
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.17 (GNU/Linux)

iQEcBAEBAgAGBQJURcV5AAoJEH9hAclg9EfItIMH/jcNShMQqvrpPN4Pr7f3CnK1
xLJjE+4ck7/VfEpcgzcl1DZTkeVx/jrKF8BrtfAPghfAFBqoeEDun/vsIVHg8vXe
dm+y5+6EJGz+oulZeMiaUwnStztqT/bRIUIjo5fekYdqOdyVR6flf5v58rcd4qP8
Yc8jDj/boQ1V3cMwmeolJseWrXo+aJUvaAGAXE4C69W1DLyk68LYPbcRvjuK6s3x
aNNmrWL0y6PapDHPfhiXDNacJKRPU3tevNp7ZbOK3gjTloeezWOnMERVEuhrm9n+
6UtjsheV1XXgeFhquugbLqb+YmETFuSq4Hlqk2XcnW0ZvQWraI9afu0/hfiPOwY=
=QdfN
-----END PGP SIGNATURE-----

--Xn2ph7RhL0KPW5433wm74j37pAOw2mW8n--
