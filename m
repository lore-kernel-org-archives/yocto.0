Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC1E6E0030B
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2012 10:54:08 -0800 (PST)
Received: by dadp13 with SMTP id p13so408949dad.35
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2012 10:54:08 -0800 (PST)
Received-SPF: pass (google.com: domain of autif.mlist@gmail.com designates
	10.68.129.73 as permitted sender) client-ip=10.68.129.73; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of autif.mlist@gmail.com
	designates 10.68.129.73 as permitted sender)
	smtp.mail=autif.mlist@gmail.com;
	dkim=pass header.i=autif.mlist@gmail.com
Received: from mr.google.com ([10.68.129.73])
	by 10.68.129.73 with SMTP id nu9mr56331760pbb.100.1329936848790
	(num_hops = 1); Wed, 22 Feb 2012 10:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=XQy6swZyrroFEeznFuluwmWtl8rWvO2Go3EhEl4KRfk=;
	b=Q2ldQhk9eiECHD9TVZFUl6pA+mLtjE8IyghqUxziOM51nyid6MqVT+tJoS0BfQOu27
	dGtKvLW27oq4gZFLNA/0qWkXbmoxShA/oCG1Ut+/WcOZylCsRqLOSFYL61lpyOeF5fGd
	K6vJVjL6v4x4RdPjB7E2OZaWWO6JFahrPMWgo=
MIME-Version: 1.0
Received: by 10.68.129.73 with SMTP id nu9mr46886474pbb.100.1329936848691;
	Wed, 22 Feb 2012 10:54:08 -0800 (PST)
Received: by 10.68.33.170 with HTTP; Wed, 22 Feb 2012 10:54:08 -0800 (PST)
In-Reply-To: <CADzUK1LiFS85BNaEpZt=4A_Qkuxdx0wPPx5g+7Jwwix069jdvw@mail.gmail.com>
References: <CADzUK1LiFS85BNaEpZt=4A_Qkuxdx0wPPx5g+7Jwwix069jdvw@mail.gmail.com>
Date: Wed, 22 Feb 2012 13:54:08 -0500
Message-ID: <CADzUK1JyrG3ju6mLuJEAaAmQzEpy_46z3D431R0SwJQHO8hxcg@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: meta-mono is released
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
X-List-Received-Date: Wed, 22 Feb 2012 18:54:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 22, 2012 at 1:25 PM, Autif Khan <autif.mlist@gmail.com> wrote:
> meta-mono has been released. I have tested it on x86 and ARM
> successfully =A0and on PPC and MIPS unsuccessfully. I will work on those
> architectures and time becomes available. If someone prefers that they
> need mono for MIPS or PPC immediately, please email me and I will see
> what I can do.

At this point of time, I am using github for hosting the source.

Michael Halstead is setting me up with git.yoctoproject

The code will be moved over to git.yoctoproject in the next few days.

I neglected to include the link in the previous email. Here are the
relevant links:

http://www.openembedded.org/wiki/LayerIndex

meta-mono is listed under software support layers

http://github.com/KokoFitClub/meta-mono

This URI will very soon be replaced with git.yoctoproject.org

Of course, Layer Index will be updated when this is done.

Once again, please use it and let me know if something does not work.

