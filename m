Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8084FE77376
	for <webhook@archiver.kernel.org>; Sat, 30 Sep 2023 14:50:42 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web10.42195.1696085433979744257
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Sep 2023 07:50:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eqhgojps;
 spf=pass (domain: gmail.com, ip: 209.85.210.170, mailfrom: simonkbaby@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-691c05bc5aaso13385399b3a.2
        for <yocto@lists.yoctoproject.org>; Sat, 30 Sep 2023 07:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696085433; x=1696690233; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qEJDWSNYUNDghFi1MUqS8lPHX8TxZFQpSqkSwCvZC4E=;
        b=eqhgojpsdoxtKGuJiLTBqXrLHrRnsihtfZ/3X/FV06gCZrelrDCeft7H7SLFdj9D2R
         xZE68WFPQ+nrykd86n2Hkft5lf1LPQFg9+RrhI6SKVf36nY8KR45CKn1xpClK3cHUVzP
         cTbd2FCe+S0yU6iN8qYtApA/v4bzh2Xk2D3O7zplXKr45pNTSRAoLvFQEdgSciHORFy8
         YfOkcNeE5zcKgjlInoD4e714Hkb3eH4CLKZKkx1EmgbMRxtrLxMLUNlU+1G0NTgi/IUv
         k9BFXdOmgw7QeEMlEfAXfgsIQSt3WC7YW+gBRIMyrD3Z4RyirGrxbgOQ8Ck+lnK8mbZa
         XnIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696085433; x=1696690233;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qEJDWSNYUNDghFi1MUqS8lPHX8TxZFQpSqkSwCvZC4E=;
        b=eMK8Y1V2ap4RBVuF9Qr3BrVcpXUdYXmfrnRBmpB4n+bbKVqrN7XnrHZiQuTjpw7MLG
         HlovbTHi4zHYmzDUZAo+wxyXd9DXf7fkkNCCtXvJmDjqhdYp8nxOGCLnjeaOjZOpDjFe
         z7ecCIjxW9S11uEWn+rJRqLLoUGI4ex7R9Err6OGTtgVGFChRDge23U53p91FvIJm38I
         GBT1V/JhHj2xh/yGAvbD2HFZ1BIhTA/fk/Tg3jMFnEuL9WHykg6w6xjWV4TQ7pWxYQui
         Fk5Ws3GARzQIZ8kohni+djcLTL9yFIWY6h1bfj6QV43WqarobbnwSBvCUqNpjl6DHrGq
         zvCQ==
X-Gm-Message-State: AOJu0Yxkj+xhpGddh+/1euvD1Hzn082IvYzoggH0IeOlS77DqOQ74brN
	PfTa9ZnIVQckkxGVkD3htfGVdRPveyfNgzhZkA4j6vPD6Eo=
X-Google-Smtp-Source: AGHT+IG6jwRmSGMDZs6/9Cl6JMS5LycVatJ5fPkOTVECcrjVdphyZAs4hlxNN7txLSvnEOpSB9ooKxNgFSiIBxu3uNQ=
X-Received: by 2002:a05:6a20:7487:b0:153:7515:9919 with SMTP id
 p7-20020a056a20748700b0015375159919mr8313371pzd.21.1696085432664; Sat, 30 Sep
 2023 07:50:32 -0700 (PDT)
MIME-Version: 1.0
From: SIMON BABY <simonkbaby@gmail.com>
Date: Sat, 30 Sep 2023 07:50:21 -0700
Message-ID: <CAEFUPH2etYeDhjAh7_ea+0yx2QUHuUtm9KOQdrxMaHeRa0U74Q@mail.gmail.com>
Subject: query on devtool update-recipe error
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b907ca060694a9b2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Sep 2023 14:50:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61176

--000000000000b907ca060694a9b2
Content-Type: text/plain; charset="UTF-8"

Hello Team,


During devtool update-recipe and devtool build I see the same error log
below. However devtool modify was successful and created the workspace with
all the code. Any clue for fixing the issue?



 devtool update-recipe linux-intel


Exception: bb.fetch2.FetchError: Fetcher failure: Recipe uses a floating
tag/branch '5.15/linux' for repo 'github.com/intel/linux-intel-lts.git'
without a fixed SRCREV yet doesn't call bb.fetch2.get_srcrev() (use SRCPV
in PV for OE).



ERROR: Parsing halted due to errors, see error messages above



Below is more logs:


sbaby@ECP-WAP-APPSERVER:~/workspace/07252023/ecp-wap-appserver$ devtool
build linux-intel

NOTE: Starting bitbake server...

WARNING: Layer summit-radio should set LAYERSERIES_COMPAT_summit-radio in
its conf/layer.conf file to list the core layer names it is compatible with.

NOTE: Reconnecting to bitbake server...

NOTE: Retrying server connection (#1)...

WARNING: Layer summit-radio should set LAYERSERIES_COMPAT_summit-radio in
its conf/layer.conf file to list the core layer names it is compatible with.

Loading cache: 100%
|#######################################################################################################################################################################|
Time: 0:00:00

Loaded 4588 entries from dependency cache.

ERROR:
/home/sbaby/workspace/07252023/ecp-wap-appserver/build/../iotg-yocto-ese-bsp/recipes-kernel/linux/
linux-intel_5.15.bb: Error executing a python function in
<code>:                 | ETA:  --:--:--



The stack trace of python calls that resulted in this exception/failure was:

File: '<code>', lineno: 19, function: <module>


0015:__anon_41__home_sbaby_workspace_07252023_ecp_wap_appserver_build____iotg_yocto_ese_bsp_classes_kernel_oot_mod_scripts_bbclass(d)


0016:__anon_22__home_sbaby_workspace_07252023_ecp_wap_appserver_build____poky_meta_classes_image_artifact_names_bbclass(d)


0017:__anon_7__home_sbaby_workspace_07252023_ecp_wap_appserver_build____poky_meta_classes_kernel_devicetree_bbclass(d)


0018:__anon_721__home_sbaby_workspace_07252023_ecp_wap_appserver_build____poky_meta_classes_kernel_yocto_bbclass(d)

***
0019:__anon_147__home_sbaby_workspace_07252023_ecp_wap_appserver_build____poky_meta_classes_externalsrc_bbclass(d)

File:
'/home/sbaby/workspace/07252023/ecp-wap-appserver/build/../poky/meta/classes/externalsrc.bbclass',
lineno: 66, function:
__anon_147__home_sbaby_workspace_07252023_ecp_wap_appserver_build____poky_meta_classes_externalsrc_bbclass

     0062:        else:

     0063:            d.setVar('B', '${WORKDIR}/${BPN}-${PV}')

     0064:

     0065:        local_srcuri = []


Regards

Simon

--000000000000b907ca060694a9b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;=
font-family:Calibri,sans-serif"><span style=3D"font-size:11pt"><br></span><=
/p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Ca=
libri,sans-serif"><span style=3D"font-size:11pt">Hello Team,</span></p><p c=
lass=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,s=
ans-serif"><span style=3D"font-size:11pt"><br></span></p><p class=3D"MsoNor=
mal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><sp=
an style=3D"font-size:11pt">During devtool update-recipe and devtool build =
I
see the same error log below. However devtool modify was successful and cre=
ated
the workspace with all the code. Any clue for fixing the issue?</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p><p class=3D"MsoNormal" style=3D"margin:0in;font-si=
ze:11pt;font-family:Calibri,sans-serif">=C2=A0devtool=C2=A0update-recipe=C2=
=A0linux-intel</p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt=
;font-family:Calibri,sans-serif"><br></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"color:red">Exception: bb.fetch2.FetchError:
Fetcher failure: Recipe uses a floating tag/branch &#39;5.15/linux&#39; for=
 repo
&#39;<a href=3D"http://github.com/intel/linux-intel-lts.git">github.com/int=
el/linux-intel-lts.git</a>&#39; without a fixed SRCREV yet doesn&#39;t call
bb.fetch2.get_srcrev() (use SRCPV in PV for OE).</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"color:red">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif"><span style=3D"color:red">ERROR: Parsing halted due to error=
s,
see error messages above</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calib=
ri,sans-serif">=C2=A0</p><p class=3D"MsoNormal" style=3D"margin:0in;font-si=
ze:11pt;font-family:Calibri,sans-serif">Below is more logs:</p><p class=3D"=
MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-seri=
f"><br></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-f=
amily:Calibri,sans-serif">sbaby@ECP-WAP-APPSERVER:~/workspace/07252023/ecp-=
wap-appserver$
devtool build linux-intel</p><p class=3D"MsoNormal" style=3D"margin:0in;fon=
t-size:11pt;font-family:Calibri,sans-serif">NOTE: Starting bitbake server..=
.</p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:=
Calibri,sans-serif">WARNING: Layer summit-radio should set
LAYERSERIES_COMPAT_summit-radio in its conf/layer.conf file to list the cor=
e
layer names it is compatible with.</p><p class=3D"MsoNormal" style=3D"margi=
n:0in;font-size:11pt;font-family:Calibri,sans-serif">NOTE: Reconnecting to =
bitbake server...</p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:1=
1pt;font-family:Calibri,sans-serif">NOTE: Retrying server connection (#1)..=
.</p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:=
Calibri,sans-serif">WARNING: Layer summit-radio should set
LAYERSERIES_COMPAT_summit-radio in its conf/layer.conf file to list the cor=
e
layer names it is compatible with.</p><p class=3D"MsoNormal" style=3D"margi=
n:0in;font-size:11pt;font-family:Calibri,sans-serif">Loading cache: 100%
|##########################################################################=
###########################################################################=
##################|
Time: 0:00:00</p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;=
font-family:Calibri,sans-serif">Loaded 4588 entries from dependency cache.<=
/p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Ca=
libri,sans-serif"><span style=3D"color:red">ERROR: /home/sbaby/workspace/07=
252023/ecp-wap-appserver/build/../iotg-yocto-ese-bsp/recipes-kernel/linux/<=
a href=3D"http://linux-intel_5.15.bb">linux-intel_5.15.bb</a>:
Error executing a python function in
&lt;code&gt;:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
| ETA:=C2=A0 --:--:--</span></p><p class=3D"MsoNormal" style=3D"margin:0in;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:red">=
=C2=A0</span></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;=
font-family:Calibri,sans-serif"><span style=3D"color:red">The stack trace o=
f python calls that
resulted in this exception/failure was:</span></p><p class=3D"MsoNormal" st=
yle=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span styl=
e=3D"color:red">File: &#39;&lt;code&gt;&#39;, lineno: 19,
function: &lt;module&gt;</span></p><p class=3D"MsoNormal" style=3D"margin:0=
in;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:red"=
>=C2=A0=C2=A0=C2=A0=C2=A0
0015:__anon_41__home_sbaby_workspace_07252023_ecp_wap_appserver_build____io=
tg_yocto_ese_bsp_classes_kernel_oot_mod_scripts_bbclass(d)</span></p><p cla=
ss=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,san=
s-serif"><span style=3D"color:red">=C2=A0=C2=A0=C2=A0=C2=A0
0016:__anon_22__home_sbaby_workspace_07252023_ecp_wap_appserver_build____po=
ky_meta_classes_image_artifact_names_bbclass(d)</span></p><p class=3D"MsoNo=
rmal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><s=
pan style=3D"color:red">=C2=A0=C2=A0=C2=A0=C2=A0
0017:__anon_7__home_sbaby_workspace_07252023_ecp_wap_appserver_build____pok=
y_meta_classes_kernel_devicetree_bbclass(d)</span></p><p class=3D"MsoNormal=
" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span =
style=3D"color:red">=C2=A0=C2=A0=C2=A0=C2=A0
0018:__anon_721__home_sbaby_workspace_07252023_ecp_wap_appserver_build____p=
oky_meta_classes_kernel_yocto_bbclass(d)</span></p><p class=3D"MsoNormal" s=
tyle=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span sty=
le=3D"color:red">***
0019:__anon_147__home_sbaby_workspace_07252023_ecp_wap_appserver_build____p=
oky_meta_classes_externalsrc_bbclass(d)</span></p><p class=3D"MsoNormal" st=
yle=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span styl=
e=3D"color:red">File:
&#39;/home/sbaby/workspace/07252023/ecp-wap-appserver/build/../poky/meta/cl=
asses/externalsrc.bbclass&#39;,
lineno: 66, function:
__anon_147__home_sbaby_workspace_07252023_ecp_wap_appserver_build____poky_m=
eta_classes_externalsrc_bbclass</span></p><p class=3D"MsoNormal" style=3D"m=
argin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"col=
or:red">=C2=A0=C2=A0=C2=A0=C2=A0
0062:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0else:</span></p><p class=3D=
"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-ser=
if">=C2=A0=C2=A0=C2=A0=C2=A0
0063:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
d.setVar(&#39;B&#39;, &#39;${WORKDIR}/${BPN}-${PV}&#39;)</p><p class=3D"Mso=
Normal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif">=
=C2=A0=C2=A0=C2=A0=C2=A0 0064:</p><p class=3D"MsoNormal" style=3D"margin:0i=
n;font-size:11pt;font-family:Calibri,sans-serif">









































</p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:C=
alibri,sans-serif">=C2=A0=C2=A0=C2=A0=C2=A0
0065:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 local_srcuri =3D []</p><p c=
lass=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,s=
ans-serif"><br></p><p class=3D"MsoNormal" style=3D"margin:0in;font-size:11p=
t;font-family:Calibri,sans-serif">Regards</p><p class=3D"MsoNormal" style=
=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif">Simon</p><p c=
lass=3D"MsoNormal" style=3D"margin:0in;font-size:11pt;font-family:Calibri,s=
ans-serif"></p></div>

--000000000000b907ca060694a9b2--

