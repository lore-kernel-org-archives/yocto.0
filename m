Return-Path: <californialsullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 923F5E0084F; Tue, 23 Sep 2014 10:35:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (californialsullivan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CE64E00786
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 10:35:44 -0700 (PDT)
Received: by mail-ob0-f179.google.com with SMTP id wm4so2238571obc.24
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 10:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=iZ0GjdzUybKtxAMI0vt04unpLl0l8QsHdt52iFJ0kmE=;
	b=ZjMwiTeEcgnlU0arb6rrXwqEBettz1nz2JobEWhawObcllM55WOgqrMOOiJUZE0Deo
	xtNYtyZWtAlcrN4FAoOc/QnOy6rZecruwf15RUe+eyJxceWgd4HOymNBufAbqyGigCOD
	UtOcGjSYAWjA6NsWfpn7YsGZ/rN9tMKJZs705tc1jdK6sPUWCvP6ooTELxshKoVQDzr8
	CffbPNy8k5Ch/KI8CLRJm2uy4HBCjPwNUV+mmtsaCPTRTR9L6q6MmcrW9R0NlAOyQQax
	/l7Kg4iDY4UNXiir6DcdnewBSHILGWoiRDmOY88lZ/SAwmgAOhwJlg5jgRLj1LJ6011R
	3nSQ==
MIME-Version: 1.0
X-Received: by 10.182.209.5 with SMTP id mi5mr1197513obc.33.1411493742093;
	Tue, 23 Sep 2014 10:35:42 -0700 (PDT)
Received: by 10.76.157.229 with HTTP; Tue, 23 Sep 2014 10:35:42 -0700 (PDT)
In-Reply-To: <1411492434-340-1-git-send-email-californialsullivan@gmail.com>
References: <1411492434-340-1-git-send-email-californialsullivan@gmail.com>
Date: Tue, 23 Sep 2014 10:35:42 -0700
Message-ID: <CAMP9K8_fBJY+xDWDoyRstwJ8oR=EwZfUvDZ6DtN7qwHc6oHy+g@mail.gmail.com>
From: California Sullivan <californialsullivan@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 01/13] buildsteps: Add ProvisionGoogleVM.py
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
X-List-Received-Date: Tue, 23 Sep 2014 17:35:50 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1cf9219ac9c0503beff01

--e89a8ff1cf9219ac9c0503beff01
Content-Type: text/plain; charset=UTF-8

See https://bugzilla.yoctoproject.org/show_bug.cgi?id=5975

On Tue, Sep 23, 2014 at 10:13 AM, <californialsullivan@gmail.com> wrote:

> From: California Sullivan <california.l.sullivan@intel.com>
>
> This build step provisions a Google VM using the gcloud command line tool.
>
> Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
> ---
>  .../autobuilder/buildsteps/ProvisionGoogleVM.py    | 85
> ++++++++++++++++++++++
>  1 file changed, 85 insertions(+)
>  create mode 100644
> lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
>
> diff --git
> a/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
> b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
> new file mode 100644
> index 0000000..fb667dd
> --- /dev/null
> +++
> b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
> @@ -0,0 +1,85 @@
> +'''
> +Created on Aug 13, 2014
> +
> +__author__ = "California Sullivan"
> +__copyright__ = "Copyright 2014, Intel Corp."
> +__credits__ = ["California Sullivan"]
> +__license__ = "GPL"
> +__version__ = "2.0"
> +__maintainer__ = "Elizabeth Flanagan"
> +__email__ = "elizabeth.flanagan@intel.com"
> +'''
> +
> +from buildbot.steps.shell import ShellCommand
> +
> +class ProvisionGoogleVM(ShellCommand):
> +    haltOnFailure = True
> +    flunkOnFailure = True
> +    name = "Provision Google VM"
> +    def __init__(self, factory, argdict=None, **kwargs):
> +        self.vmname=None
> +        self.vmcount=1
> +        self.startupscript=None
> +        self.metadata=None
> +        self.zone="us-central1-a"
> +        self.image=None
> +        self.machine=None
> +        self.network=None
> +        self.disksize=None
> +        self.factory = factory
> +        self.description = "Provision Google VM"
> +        for k, v in argdict.iteritems():
> +            if type(v) is bool:
> +                setattr(self, k, str(v))
> +            else:
> +                setattr(self, k, v)
> +
> +        if self.vmname is None or self.vmname == "":
> +            self.finished(FAILURE)
> +        else:
> +            self.command = "gcloud compute instances create"
> +            self.vmnames = ""
> +            for x in range(0, self.vmcount):
> +                self.vmnames += " " + self.vmname + "-" + str(x)
> +            self.command += self.vmnames
> +            if self.zone is not None and self.zone in ["us-central1-a",
> "us-central1-b", "us-central1-f", "europe-west1-a", "europe-west1-b",
> "asia-east1-a", "asia-east1-b", "asia-east1-b"]:
> +                self.command += " --zone " + self.zone
> +            else:
> +                self.command += " --zone us-central1-a"
> +            if self.disksize is not None and self.disksize != "":
> +                self.command += " --boot-disk-size " + self.disksize
> +            else:
> +                self.command += " --boot-disk-size 200GB"
> +            if self.image is None:
> +                self.command += " --image debian-7"
> +            else:
> +                self.command += " --image " + self.image
> +
> +            if self.machine is not None and self.machine in ["g1-small",
> "f1-micro", "n1-standard-1", "n1-standard-2", "n1-standard-4",
> "n1-standard-8", "n1-standard-16", "n1-highmem-2", "n1-highmem-4"]:
> +                self.command += " --machine-type " + self.machine
> +            else:
> +                self.command += " --machine-type n1-standard-1"
> +            if self.network is not None and self.network != "":
> +                self.command += " --network " + self.network
> +            if self.startupscript is not None and self.startupscript !=
> "":
> +                self.command += " --metadata-from-file startup-script=" +
> self.startupscript
> +                if self.metadata is not None and self.metadata != "":
> +                    self.command += " --metadata " + self.scriptargs
> +            self.command += " 1> /dev/null";
> +
> +            # Timeout needs to be passed to LoggingBuildStep as a kwarg
> +            self.timeout = 1000
> +            kwargs['timeout']=self.timeout
> +            ShellCommand.__init__(self, **kwargs)
> +
> +    def describe(self, done=False):
> +        description = ShellCommand.describe(self,done)
> +        return description
> +
> +    def commandComplete(self, cmd):
> +        if not cmd.didFail():
> +            self.setProperty("vmnames", self.vmnames)
> +            self.setProperty("zone", self.zone)
> +            self.setProperty("vmcount", self.vmcount)
> +
> +
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--e89a8ff1cf9219ac9c0503beff01
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">See <a href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D5975">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5975</a>=
<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue,=
 Sep 23, 2014 at 10:13 AM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:califor=
nialsullivan@gmail.com" target=3D"_blank">californialsullivan@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">From: California Sulli=
van &lt;<a href=3D"mailto:california.l.sullivan@intel.com">california.l.sul=
livan@intel.com</a>&gt;<br>
<br>
This build step provisions a Google VM using the gcloud command line tool.<=
br>
<br>
Signed-off-by: California Sullivan &lt;<a href=3D"mailto:california.l.sulli=
van@intel.com">california.l.sullivan@intel.com</a>&gt;<br>
---<br>
=C2=A0.../autobuilder/buildsteps/ProvisionGoogleVM.py=C2=A0 =C2=A0 | 85 +++=
+++++++++++++++++++<br>
=C2=A01 file changed, 85 insertions(+)<br>
=C2=A0create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps=
/ProvisionGoogleVM.py<br>
<br>
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGo=
ogleVM.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoo=
gleVM.py<br>
new file mode 100644<br>
index 0000000..fb667dd<br>
--- /dev/null<br>
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.=
py<br>
@@ -0,0 +1,85 @@<br>
+&#39;&#39;&#39;<br>
+Created on Aug 13, 2014<br>
+<br>
+__author__ =3D &quot;California Sullivan&quot;<br>
+__copyright__ =3D &quot;Copyright 2014, Intel Corp.&quot;<br>
+__credits__ =3D [&quot;California Sullivan&quot;]<br>
+__license__ =3D &quot;GPL&quot;<br>
+__version__ =3D &quot;2.0&quot;<br>
+__maintainer__ =3D &quot;Elizabeth Flanagan&quot;<br>
+__email__ =3D &quot;<a href=3D"mailto:elizabeth.flanagan@intel.com">elizab=
eth.flanagan@intel.com</a>&quot;<br>
+&#39;&#39;&#39;<br>
+<br>
+from buildbot.steps.shell import ShellCommand<br>
+<br>
+class ProvisionGoogleVM(ShellCommand):<br>
+=C2=A0 =C2=A0 haltOnFailure =3D True<br>
+=C2=A0 =C2=A0 flunkOnFailure =3D True<br>
+=C2=A0 =C2=A0 name =3D &quot;Provision Google VM&quot;<br>
+=C2=A0 =C2=A0 def __init__(self, factory, argdict=3DNone, **kwargs):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.vmname=3DNone<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.vmcount=3D1<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.startupscript=3DNone<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.metadata=3DNone<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.zone=3D&quot;us-central1-a&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.image=3DNone<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.machine=3DNone<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.network=3DNone<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.disksize=3DNone<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.factory =3D factory<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.description =3D &quot;Provision Google VM=
&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 for k, v in argdict.iteritems():<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if type(v) is bool:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 setattr(self, k, s=
tr(v))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 setattr(self, k, v=
)<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.vmname is None or self.vmname =3D=3D &=
quot;&quot;:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.finished(FAILURE)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command =3D &quot;gcloud co=
mpute instances create&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.vmnames =3D &quot;&quot;<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for x in range(0, self.vmcount):=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.vmnames +=3D =
&quot; &quot; + self.vmname + &quot;-&quot; + str(x)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D self.vmnames<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.zone is not None and sel=
f.zone in [&quot;us-central1-a&quot;, &quot;us-central1-b&quot;, &quot;us-c=
entral1-f&quot;, &quot;europe-west1-a&quot;, &quot;europe-west1-b&quot;, &q=
uot;asia-east1-a&quot;, &quot;asia-east1-b&quot;, &quot;asia-east1-b&quot;]=
:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D =
&quot; --zone &quot; + self.zone<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D =
&quot; --zone us-central1-a&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.disksize is not None and=
 self.disksize !=3D &quot;&quot;:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D =
&quot; --boot-disk-size &quot; + self.disksize<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D =
&quot; --boot-disk-size 200GB&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.image is None:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D =
&quot; --image debian-7&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D =
&quot; --image &quot; + self.image<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.machine is not None and =
self.machine in [&quot;g1-small&quot;, &quot;f1-micro&quot;, &quot;n1-stand=
ard-1&quot;, &quot;n1-standard-2&quot;, &quot;n1-standard-4&quot;, &quot;n1=
-standard-8&quot;, &quot;n1-standard-16&quot;, &quot;n1-highmem-2&quot;, &q=
uot;n1-highmem-4&quot;]:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D =
&quot; --machine-type &quot; + self.machine<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D =
&quot; --machine-type n1-standard-1&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.network is not None and =
self.network !=3D &quot;&quot;:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D =
&quot; --network &quot; + self.network<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.startupscript is not Non=
e and self.startupscript !=3D &quot;&quot;:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D =
&quot; --metadata-from-file startup-script=3D&quot; + self.startupscript<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.metadata i=
s not None and self.metadata !=3D &quot;&quot;:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self=
.command +=3D &quot; --metadata &quot; + self.scriptargs<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D &quot; 1&gt; /=
dev/null&quot;;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Timeout needs to be passed to =
LoggingBuildStep as a kwarg<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.timeout =3D 1000<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kwargs[&#39;timeout&#39;]=3Dself=
.timeout<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ShellCommand.__init__(self, **kw=
args)<br>
+<br>
+=C2=A0 =C2=A0 def describe(self, done=3DFalse):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 description =3D ShellCommand.describe(self,don=
e)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return description<br>
+<br>
+=C2=A0 =C2=A0 def commandComplete(self, cmd):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if not cmd.didFail():<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.setProperty(&quot;vmnames&q=
uot;, self.vmnames)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.setProperty(&quot;zone&quot=
;, self.zone)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.setProperty(&quot;vmcount&q=
uot;, self.vmcount)<br>
+<br>
+<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.9.1<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--e89a8ff1cf9219ac9c0503beff01--
