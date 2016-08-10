Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5834FE01026; Wed, 10 Aug 2016 00:12:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [23.83.214.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from barb.maple.relay.mailchannels.net
	(barb.maple.relay.mailchannels.net [23.83.214.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D21DE00C81
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2016 00:12:32 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 64B80120227;
	Wed, 10 Aug 2016 07:12:31 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-107-69-155.us-west-2.compute.internal
	[10.107.69.155])
	by relay.mailchannels.net (Postfix) with ESMTPA id 4D2F0120A1D;
	Wed, 10 Aug 2016 07:12:30 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.92.147.53])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.6); Wed, 10 Aug 2016 07:12:31 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1470813150777:3757708955
X-MC-Ingress-Time: 1470813150776
Received: from ip-217-103-177-37.ip.prioritytelecom.net
	([217.103.177.37]:50412 helo=[10.191.255.204])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.87)
	(envelope-from <pidge@toganlabs.com>)
	id 1bXNgd-0030rg-3z; Wed, 10 Aug 2016 09:12:24 +0200
Message-ID: <1470813136.4144.1.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Wed, 10 Aug 2016 09:12:16 +0200
In-Reply-To: <1470760930-6898-1-git-send-email-william.c.randle@intel.com>
References: <1470760930-6898-1-git-send-email-william.c.randle@intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Subject: Re: [yocto-autobuilder][PATCH] SendQAEmail.py: use sendmail instead of mail to send QA email
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: pidge@toganlabs.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 Aug 2016 07:12:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Merged into master,

Thanks
-b

On Tue, 2016-08-09 at 09:42 -0700, Bill Randle wrote:
> When sending QA emails, the autobuilder uses the 'mail' command
> (typically
> installed as /usr/bin/mail or /bin/mail). However, most distributions
> do not
> install this program by default. They generally always install the
> 'sendmail'
> program, though, so use 'sendmail' as the mail agent, rather than
> 'mail'.
>=20
> [YOCTO #10082]
>=20
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
> =C2=A0.../autobuilder/buildsteps/SendQAEmail.py=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| 26
> ++++++++++++----------
> =C2=A01 file changed, 14 insertions(+), 12 deletions(-)
>=20
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/SendQAEmail.py b/lib/python2.7/site-
> packages/autobuilder/buildsteps/SendQAEmail.py
> index 0cd76d5..3691cc6 100644
> --- a/lib/python2.7/site-
> packages/autobuilder/buildsteps/SendQAEmail.py
> +++ b/lib/python2.7/site-
> packages/autobuilder/buildsteps/SendQAEmail.py
> @@ -47,9 +47,9 @@ class SendQAEmail(ShellCommand):
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0properties =3D self.build.getProperties().asDict()
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0repoprops =3D {}
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0mailsubject =3D "Build available for QA"
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
email_header =3D '''
> -=C2=A0=C2=A0=C2=A0=C2=A0A build identified as needing QA has finished =
on the
> autobuilder. This
> -=C2=A0=C2=A0=C2=A0=C2=A0build is located at:\n\n
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
email_base =3D '''
> +A build identified as needing QA has finished on the autobuilder.
> This
> +build is located at:\n\n
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%s''' % (self.getProperty('DEST').replace=
(web_root, web_url))
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if str(self.getProperty("custom_release_me")) =3D=3D "True":
> @@ -68,9 +68,9 @@ class SendQAEmail(ShellCommand):
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0poky_number =3D
> self.getProperty("custom_poky_number")+prefix
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0yocto_number =3D
> self.getProperty("custom_yocto_number")+prefix
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rel_name =3D 'yocto-'+ yocto_number
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0email_header =3D '''
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0email_base =3D '''
> =C2=A0A release candidate build for %s is now available at:\n\n
> -%s\n\n
> +=C2=A0=C2=A0=C2=A0=C2=A0%s\n\n
> =C2=A0Please begin QA on this build as soon as possible.''' % (rel_name=
,
> self.getProperty('DEST').replace(web_root, web_url))
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mailsubject =3D "Release Candidate Build fo=
r " +
> rel_name + snapshot + " now available."
> =C2=A0
> @@ -85,16 +85,18 @@ Please begin QA on this build as soon as
> possible.''' % (rel_name, self.getPrope
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0for k, v in repoprops.iteritems():
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0email_body =3D email_body + '%s : %s \n' % =
(k, v[1])
> =C2=A0
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
mailcmd =3D 'echo -e "' + email_header + '\n' + email_body
> + '\n' + mailsig + ' " | mail -s \'' + mailsubject + '\''
> -
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
email_header =3D ""
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
if mailto is not None and mailto is not "":
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0email_header +=3D "To: " + mailto + "\n"
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if mailcc is not None and mailcc is not "":
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0mailcmd +=3D " -c '" + mailcc + "' "
> -
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0email_header +=3D "Cc: " + mailcc + "\n"
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if mailbcc is not None and mailbcc is not "":
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0mailcmd +=3D " -b '" + mailbcc + "' "
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0email_header +=3D "Bcc: " + mailbcc + "\n"
> +
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
email_header +=3D "Subject: " + mailsubject + "\n"
> +
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
mailcmd =3D 'echo -e "' + email_header + "\n" + email_base
> + '\n' + email_body + '\n' + mailsig + ' " | sendmail -t'
> =C2=A0
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
if mailto is not None and mailto is not "":
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0mailcmd +=3D " '" + mailto + "' "
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0self.command =3D mailcmd
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0self.command =3D 'echo "Not a QA build"'

