Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A6CFE007C0; Mon, 27 Oct 2014 11:16:40 -0700 (PDT)
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
	*      [209.85.216.47 listed in list.dnswl.org]
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E464E00796
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 11:16:34 -0700 (PDT)
Received: by mail-qa0-f47.google.com with SMTP id dc16so4242226qab.34
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 11:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type:content-transfer-encoding;
	bh=3pd3b8HqAYnJYrZlXvbnT46QdGIpgB20rcdyHG+r3hA=;
	b=xnvTO3c0uTdk4J49gsDoWd4DJ0uvAkAHPw06NvGRrzr85AOwVaj9Q+4U6gqQAK4a93
	0QYIhawghxjykT5K4sbUvOGNuNZa67Om6nwlJPIaA3rgZ/jv8UDGXniyN651aKK8n0ny
	gl0N2AHTCEQ5P96M20CkI0WHw5tF7IrhwBjslxIRR3g5qaNHzqlXHgRglzkNhe31Xc85
	N5XyLiKsOygiY5qNxu+lE25iGwfixs27d08rrGwG+PRdNy7fNgs63QypYfvuZXJ6EJTD
	iBSsYhVRzoBzISA7HO0dp1fo6p8MTZEsuuOyfBQdz4cS6CgEHZ5L+nse3Q1UI57fc4PQ
	tHdA==
X-Received: by 10.140.102.169 with SMTP id w38mr33486606qge.95.1414433785543; 
	Mon, 27 Oct 2014 11:16:25 -0700 (PDT)
Received: from email.parenteses.org.gmail.com (email.parenteses.org.
	[198.199.72.94])
	by mx.google.com with ESMTPSA id z8sm11802948qaj.43.2014.10.27.11.16.21
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 27 Oct 2014 11:16:22 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: "Crast\, Nicholas" <Nicholas.Crast@saabsensis.com>
References: <36A43B0E1E88D84791516F9D44BC48331B3DCC62@corpmail01.corp.sensis.com>
Date: Mon, 27 Oct 2014 18:16:19 +0000
In-Reply-To: <36A43B0E1E88D84791516F9D44BC48331B3DCC62@corpmail01.corp.sensis.com>
	(Nicholas Crast's message of "Mon, 27 Oct 2014 17:25:41 +0000")
Message-ID: <878uk19y4s.fsf@email.parenteses.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.3 (gnu/linux)
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best practices for changing a conf file
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
X-List-Received-Date: Mon, 27 Oct 2014 18:16:40 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Nick,

On Mon, 27 Oct 2014 17:25:41 +0000 "Crast, Nicholas" <Nicholas.Crast@saabse=
nsis.com> wrote:

> I=E2=80=99m just looking for some advice on best practices. I want to cha=
nge
> the configuration file for rsyslog called rsyslog.conf
> (poky/meta/recipes-extended/rsyslog), but there is a certain appeal to
> me of not changing the files in the meta directory. I like to keep
> those pristine and accomplish everything I need with recipes in a
> different layer. Is the best way to change this file to just go in and
> change that .conf file, or is there an easy way to use a .bbappend
> file to substitute my own configuration file?

I think the best approach is to add a bbappend file to your layer, which
installs your own config file.

If the config file is already in SRC_URI (like rsyslog's), it's just a
matter of creating a .bbappend like this:

  $ cat rsyslog_%.bbappend
  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

, and adding your custom config file to the ${PN} directory (i.e.,
rsyslog/rsyslog.conf).  So, you'll have something like that in your
layer:

  recipes-extended/
  recipes-extended/rsyslog/
  recipes-extended/rsyslog/rsyslog/
  recipes-extended/rsyslog/rsyslog_%.bbappend
  recipes-extended/rsyslog/rsyslog/rsyslog.conf


Best wishes.
Mario
--=20
http://www.ossystems.com.br

