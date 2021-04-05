Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web09.1209.1617648955356741140
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Apr 2021 11:55:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TqCAvRaW;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.182, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lj1-f182.google.com with SMTP id o16so13718048ljp.3
        for <yocto@lists.yoctoproject.org>; Mon, 05 Apr 2021 11:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Lq1+e0LKqbG4FANUR9HbBssvRzdduaXcLAInHHhG1aI=;
        b=TqCAvRaW9eGXo6Q9DtxKmaE4+P/renOWstR/hYQ8b8eo/SChqyjORGkcZKUsD4OzwB
         wr0SlWmuqLl84huuXH/K1dQ+hUQgATxLr6Ho00hQgtSFvOwKI1LG4Koih8p9WDc0SCb2
         kYek7Gkmd9QZtH6SUpB8BbziJEhHskBd+QrcE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Lq1+e0LKqbG4FANUR9HbBssvRzdduaXcLAInHHhG1aI=;
        b=C+3prNwRR+83UfjklIs3XxJFe52g0XEfjhFu1enG21v8hCULUPB5CinXQ5k7orsQzI
         JSR2KxsnzCLRsDw4gg4bV6v60gBgE0eVJtbXRwXbfSXKF1zJL7QbUXiE+6AMXS6du6O8
         KuhVs9einAsX1s0Bnb3PE2wwnkydQg3aY64z5ARS8geCg+FaKFrwWOQbaLE56G281Olh
         0Xx8U7EukA7wWSR74HSu9rVR2nYzubjC6PbHnqTJPbiwEcFpQMLE9l0NCET9c6P7zd3x
         onnnATs4B6YTIZQ1sKxV54VPF8XoagLiApy4Kip9Ht7rQijboy1/JioygGwiVxJ07LEF
         lq1g==
X-Gm-Message-State: AOAM533YeTlLkwBHZPSLqTzkuUGUmptmTwU+QPZcDcgj3HwjL0j3bcKv
	JusJ+EFREnSF0nE5ku2Wbph9M90IhD2F93TX8SbxbQ==
X-Google-Smtp-Source: ABdhPJy3GBrLuooI+ehftic4UYHBguezFyuIjaKYbLyovEjtocf0oeyF2jPUeAyx+ULc939XzpTFhode3sGgH8lioLU=
X-Received: by 2002:a2e:9a42:: with SMTP id k2mr17332540ljj.363.1617648953437;
 Mon, 05 Apr 2021 11:55:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210405162305.1419881-1-trevor.gamblin@windriver.com>
In-Reply-To: <20210405162305.1419881-1-trevor.gamblin@windriver.com>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Mon, 5 Apr 2021 11:55:42 -0700
Message-ID: <CADfgfoYc1_xe5MHrMuHe0KZ+z3k=5XUNbKwBNR375XJbC1pzaQ@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder2][RFC][PATCH] README-Guide.md: Add multi-node content, extra config info
To: Trevor Gamblin <trevor.gamblin@windriver.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003dc2be05bf3e3f77"

--0000000000003dc2be05bf3e3f77
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 5, 2021 at 9:23 AM Trevor Gamblin <trevor.gamblin@windriver.com>
wrote:

> Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
> ---
>  README-Guide.md | 94 +++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 94 insertions(+)
>
> diff --git a/README-Guide.md b/README-Guide.md
> index 21dd7c1..8558c48 100644
> --- a/README-Guide.md
> +++ b/README-Guide.md
> @@ -43,6 +43,16 @@ yocto-controller/yoctoabb
>  yocto-worker
>  ```
>
> +Before proceeding, make sure that the following is added to the
> +pokybuild3 user's exports (e.g. in .bashrc), or builds will fail after
> +being triggered:
> +
> +```
> +export LC_ALL=en_US.UTF-8
> +export LANG=en_US.UTF-8
> +export LANGUAGE=en_US.UTF-8
> +```
>


On the AB at typhoon.yocto.io only LANG=en_US.UTF-8 is set. I don't know
why LC_ALL or LANGUAGE need to be set on your cluster for builds to succeed.



> +
>  Next, we need to update the `yocto-controller/yoctoabb/master.cfg`
> towards the bottom where the `title`, `titleURL`, and `buildbotURL` are all
> set.  This is also where you would specify a different password for binding
> workers to the master.
>
>  Then, we need to update the `yocto-controller/yoctoabb/config.py` to
> include our worker.  In that file, find the line where `workers` is set and
> add: ["example-worker"].  _NOTE:_ if your worker's name is different, use
> that here.  Section 3.1 discusses how to further refine this list of
> workers.
> @@ -112,6 +122,90 @@ sudo
> /home/pokybuild3/yocto-worker/qemuarm/build/scripts/runqemu-gen-tapdevs \
>
>  In the above command, we assume the a build named qemuarm failed.  The
> value of 8 is the number of tap interfaces to create on the worker.
>
> +### 1.3) Adding Dedicated Worker Nodes
> +
> +Running both the controller and the worker together on a single machine
> +can quickly result in long build times and an unresponsive web UI,
> +especially if you plan on running any of the more comprehensive builders
> +(e.g. a-full). Additional workers can be added to the cluster by
> +following the steps given above, except that the yocto-controller steps
> +do not need to be repeated. For example, to add a new worker
> +"ala-blade51" to an Autobuilder cluster with a yocto-controller at the
> +IP address 147.11.105.72:
> +
> +1. On the yocto-controller host, add the name of the new worker to a
> worker
> +list (or create a new one) e.g. 'workers_wrlx = ["ala-blade51"]' and
> +make sure that it is added to the "workers" list.
> +
> +2. On the new worker node:
> +
> +```
> +sudo apt-get install gawk wget git-core diffstat unzip texinfo \
> +gcc-multilib build-essential chrpath socat cpio python python3 \
> +python3-pip python3-pexpect xz-utils debianutils iputils-ping \
> +libsdl1.2-dev xterm
>

Should we link to
https://docs.yoctoproject.org/ref-manual/system-requirements.html#ubuntu-and-debian
for the current package set as well as listing this information here?


> +
> +sudo pip3 install buildbot buildbot-www buildbot-waterfall-view \
> +buildbot-console-view buildbot-grid-view buildbot-worker
> +
> +useradd -m --system pokybuild3
> +cd /home/pokybuild3
> +mkdir -p git/trash
> +buildbot-worker create-worker -r --umask=0o22 yocto-worker 147.11.105.72
> ala-blade51 pass
> +chown -R pokybuild3:pokybuild3 /home/pokybuild3
> +```
> +
> + > Note 1: The URL/IP given to the create-worker command must match the
> +host running the yocto-controller.
> +
> + > Note 2: The "pass" argument given to the create-worker command must
> +match the common "worker_pass" variable set in
> yocto-controller/yoctoabb/config.py.
> +
> +
> +### 1.4) Configuring NFS for the Autobuilder Cluster
> +
> +The Yocto Autobuilder relies on NFS to distribute a common sstate cache
> +and other outputs between nodes. A similar configuration can be
> +deployed by performing the steps given below, which were written for
> +Ubuntu 18.04.In order for both the controller and worker nodes to be
> able
> +to access the NFS share without issue, the "pokybuild3" user on all
> +systems must have the same UID/GID, or sufficient permissions must be
> +granted on the /srv/autobuilder path (or wherever you modified the config
> +files to point to). The following instructions assume a controller node
> +at 147.11.105.72 and a single worker node at 147.11.105.71, but
> +additional worker nodes can be added as needed (see the previous
> +section).
> +
> +1. On the NFS host:
> +
> +```
> +sudo apt install -y nfs-kernel-server
> +sudo mkdir -p /srv/autobuilder/autobuilder.yoctoproject.org/pub/sstate
> +sudo chown -R pokybuild3:pokybuild3 /srv
>

Let's only chown the directories we intend to export. Other data may be
present in /srv and leaving its owner intact is desirable.


> +```
> +2. Add the following to /etc/exports, replacing the path and IP fields
> +   as necessary for each client node:
> +```
> +/srv/autobuilder/autobuilder.yoctoproject.org/pub/sstate
> 147.11.105.71(rw,sync,no_subtree_check)
> +```
> +
> +3. Run
> +```
> +sudo systemctl restart nfs-kernel-server
> +```
> +
> +4. Adjust the firewall (if required). Example:
> +```
> +sudo ufw allow from 147.11.105.71 to any port nfs
> +```
> +
> +5. On the client node(s):
> +```
> +sudo mkdir -p /srv/autobuilder/autobuilder.yoctoproject.org/pub/sstate
> +sudo chown -R pokybuild3:pokybuild3 /srv/autobuilder/
> +sudo mount 147.11.105.72:/srv/autobuilder/
> autobuilder.yoctoproject.org/pub/sstate /srv/autobuilder/
> autobuilder.yoctoproject.org/pub/sstate
> +```
> +
>  ## 2) Basics
>
>  This section is an overview of operation and a few basic configuration
> file relationships.  See Section 3 for more detailed instructions.
> --
> 2.30.2
>
>
> 
>
>

-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--0000000000003dc2be05bf3e3f77
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 5, 2021 at 9:23 AM Trevor=
 Gamblin &lt;<a href=3D"mailto:trevor.gamblin@windriver.com">trevor.gamblin=
@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">Signed-off-by: Trevor Gamblin &lt;<a href=3D"mailto:trevor.ga=
mblin@windriver.com" target=3D"_blank">trevor.gamblin@windriver.com</a>&gt;=
<br>
---<br>
=C2=A0README-Guide.md | 94 +++++++++++++++++++++++++++++++++++++++++++++++=
++<br>
=C2=A01 file changed, 94 insertions(+)<br>
<br>
diff --git a/README-Guide.md b/README-Guide.md<br>
index 21dd7c1..8558c48 100644<br>
--- a/README-Guide.md<br>
+++ b/README-Guide.md<br>
@@ -43,6 +43,16 @@ yocto-controller/yoctoabb<br>
=C2=A0yocto-worker<br>
=C2=A0```<br>
<br>
+Before proceeding, make sure that the following is added to the<br>
+pokybuild3 user&#39;s exports (e.g. in .bashrc), or builds will fail afte=
r<br>
+being triggered:<br>
+<br>
+```<br>
+export LC_ALL=3Den_US.UTF-8<br>
+export LANG=3Den_US.UTF-8<br>
+export LANGUAGE=3Den_US.UTF-8<br>
+```<br></blockquote><div><br></div><div><br></div><div>On the AB at <a hr=
ef=3D"http://typhoon.yocto.io">typhoon.yocto.io</a> only LANG=3Den_US.UTF-8=
 is set. I don&#39;t know why LC_ALL or LANGUAGE need to be set on your clu=
ster for builds to succeed.</div><div><br></div><div>=C2=A0</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
+<br>
=C2=A0Next, we need to update the=C2=A0`yocto-controller/yoctoabb/master.c=
fg` towards the bottom where the=C2=A0`title`,=C2=A0`titleURL`, and=C2=A0`b=
uildbotURL` are all set.=C2=A0 This is also where you would specify a diffe=
rent password for binding workers to the master.<br>
<br>
=C2=A0Then, we need to update the=C2=A0`yocto-controller/yoctoabb/config.p=
y` to include our worker.=C2=A0 In that file, find the line where=C2=A0`wor=
kers` is set and add:=C2=A0[&quot;example-worker&quot;].=C2=A0=C2=A0_NOTE:_=
 if your worker&#39;s name is different, use that here.=C2=A0 Section 3.1 d=
iscusses how to further refine this list of workers.<br>
@@ -112,6 +122,90 @@ sudo /home/pokybuild3/yocto-worker/qemuarm/build/scri=
pts/runqemu-gen-tapdevs \<br>
<br>
=C2=A0In the above command, we assume the a build named=C2=A0qemuarm faile=
d.=C2=A0 The value of=C2=A08=C2=A0is the number of tap interfaces to create=
 on the worker.<br>
<br>
+### 1.3) Adding Dedicated Worker Nodes<br>
+<br>
+Running both the controller and the worker together on a single machine<b=
r>
+can quickly result in long build times and an unresponsive web UI,<br>
+especially if you plan on running any of the more comprehensive builders<=
br>
+(e.g. a-full). Additional workers can be added to the cluster by<br>
+following the steps given above, except that the yocto-controller steps<b=
r>
+do not need to be repeated. For example, to add a new worker<br>
+&quot;ala-blade51&quot; to an Autobuilder cluster with a yocto-controller=
 at the<br>
+IP address <a href=3D"http://147.11.105.72" rel=3D"noreferrer" target=3D"=
_blank">147.11.105.72</a>:<br>
+<br>
+1. On the yocto-controller host, add the name of the new worker to a work=
er<br>
+list (or create a new one) e.g. &#39;workers_wrlx =3D [&quot;ala-blade51&=
quot;]&#39; and<br>
+make sure that it is added to the &quot;workers&quot; list.<br>
+<br>
+2. On the new worker node:<br>
+<br>
+```<br>
+sudo apt-get install gawk wget git-core diffstat unzip texinfo \<br>
+gcc-multilib build-essential chrpath socat cpio python python3 \<br>
+python3-pip python3-pexpect xz-utils debianutils iputils-ping \<br>
+libsdl1.2-dev xterm<br></blockquote><div><br></div><div>Should we link to=
=
=C2=A0<a href=3D"https://docs.yoctoproject.org/ref-manual/system-requireme=
nts.html#ubuntu-and-debian">https://docs.yoctoproject.org/ref-manual/system=
-requirements.html#ubuntu-and-debian</a> for the current package set as wel=
l as listing this information here?</div><div>=C2=A0</div><blockquote class=
=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">
+<br>
+sudo pip3 install buildbot buildbot-www buildbot-waterfall-view \<br>
+buildbot-console-view buildbot-grid-view buildbot-worker<br>
+<br>
+useradd -m --system pokybuild3<br>
+cd /home/pokybuild3<br>
+mkdir -p git/trash<br>
+buildbot-worker create-worker -r --umask=3D0o22 yocto-worker 147.11.105.7=
2 ala-blade51 pass<br>
+chown -R pokybuild3:pokybuild3 /home/pokybuild3<br>
+```<br>
+<br>
+ &gt; Note 1: The URL/IP given to the create-worker command must match th=
e<br>
+host running the yocto-controller.<br>
+<br>
+ &gt; Note 2: The &quot;pass&quot; argument given to the create-worker co=
mmand must<br>
+match the common &quot;worker_pass&quot; variable set in yocto-controller=
/yoctoabb/config.py.<br>
+<br>
+<br>
+### 1.4) Configuring NFS for the Autobuilder Cluster<br>
+<br>
+The Yocto Autobuilder relies on NFS to distribute a common sstate cache<b=
r>
+and other outputs between nodes. A similar configuration can be<br>
+deployed by performing the steps given below, which were written for<br>
+Ubuntu <a href=3D"http://18.04.In" rel=3D"noreferrer" target=3D"_blank">1=
8.04.In</a> order for both the controller and worker nodes to be able <br>
+to access the NFS share without issue, the &quot;pokybuild3&quot; user on=
 all <br>
+systems must have the same UID/GID, or sufficient permissions must be <br=
>
+granted on the /srv/autobuilder path (or wherever you modified the config=
 <br>
+files to point to). The following instructions assume a controller node<b=
r>
+at 147.11.105.72 and a single worker node at 147.11.105.71, but<br>
+additional worker nodes can be added as needed (see the previous<br>
+section).<br>
+<br>
+1. On the NFS host:<br>
+<br>
+```<br>
+sudo apt install -y nfs-kernel-server<br>
+sudo mkdir -p /srv/autobuilder/<a href=3D"http://autobuilder.yoctoproject=
.org/pub/sstate" rel=3D"noreferrer" target=3D"_blank">autobuilder.yoctoproj=
ect.org/pub/sstate</a><br>
+sudo chown -R pokybuild3:pokybuild3 /srv<br></blockquote><div><br></div><=
div>Let&#39;s only chown the directories we intend to export. Other data ma=
y be present in /srv and leaving its owner intact is desirable.</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
+```<br>
+2. Add the following to /etc/exports, replacing the path and IP fields<br=
>
+=C2=A0 =C2=A0as necessary for each client node:<br>
+```<br>
+/srv/autobuilder/<a href=3D"http://autobuilder.yoctoproject.org/pub/sstat=
e" rel=3D"noreferrer" target=3D"_blank">autobuilder.yoctoproject.org/pub/ss=
tate</a> 147.11.105.71(rw,sync,no_subtree_check)<br>
+```<br>
+<br>
+3. Run<br>
+```<br>
+sudo systemctl restart nfs-kernel-server<br>
+```<br>
+<br>
+4. Adjust the firewall (if required). Example:<br>
+```<br>
+sudo ufw allow from 147.11.105.71 to any port nfs<br>
+```<br>
+<br>
+5. On the client node(s):<br>
+```<br>
+sudo mkdir -p /srv/autobuilder/<a href=3D"http://autobuilder.yoctoproject=
.org/pub/sstate" rel=3D"noreferrer" target=3D"_blank">autobuilder.yoctoproj=
ect.org/pub/sstate</a><br>
+sudo chown -R pokybuild3:pokybuild3 /srv/autobuilder/<br>
+sudo mount 147.11.105.72:/srv/autobuilder/<a href=3D"http://autobuilder.y=
octoproject.org/pub/sstate" rel=3D"noreferrer" target=3D"_blank">autobuilde=
r.yoctoproject.org/pub/sstate</a> /srv/autobuilder/<a href=3D"http://autobu=
ilder.yoctoproject.org/pub/sstate" rel=3D"noreferrer" target=3D"_blank">aut=
obuilder.yoctoproject.org/pub/sstate</a><br>
+```<br>
+<br>
=C2=A0## 2) Basics<br>
<br>
=C2=A0This section is an overview of operation and a few basic configurati=
on file relationships.=C2=A0 See Section 3 for more detailed instructions.<=
br>
-- <br>
2.30.2<br>
<br>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Fou=
ndation / Yocto Project</div><div>Systems Operations Engineer</div></div></=
div></div>

--0000000000003dc2be05bf3e3f77--
