Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A7E5E8FDBE
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 22:31:43 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.4317.1696372294219235745
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Oct 2023 15:31:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cxYbjMlp;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: simonkbaby@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2773523b2b6so961386a91.2
        for <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 15:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696372293; x=1696977093; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WcjZEPAkDZEhle+ABu1R6xKbNLNPGf+jUpSlaZbOb/U=;
        b=cxYbjMlpO6XQbQ9AHltDmAuF2pAbF1THeEiIF5jC14YBBa07SotEMmq+RIteZDNhGq
         lpPrlPhTgjEUijUyhIYTYrl4UPFC6FETVRKZuZc4Ay8uVTy3dyXuUkcxyD6sp6om9yig
         AhG6+WEFpH5DK1Wc0F79rddf23anWQ09jnPnF3YWwwdt2rwAyfCCL++bzhEr8PoSK4ld
         UvbYvWpJ6CZ+RZK5Aho5P01+SZUmvyHiCxPs1d7hQtM5rGM1kfGIBKiSYzSQucrErvwY
         xZz1cGkBdLI37vvvlaeqZAQ+yepYyMIhk2PlhkwJ5aaXw5oTHssrcBSxcxyA8gVi63P1
         4vxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696372293; x=1696977093;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WcjZEPAkDZEhle+ABu1R6xKbNLNPGf+jUpSlaZbOb/U=;
        b=qv1rsLl3VnpxqmR90/N4Jfyj7auxM1fndwYx4WAOW1TbfnTtvbIhZnk87HCn5mDWNk
         p4TKkYn6d0rSOZ5Fyl0wTxk2gVXvWip5XSUkwLvMWO4UfXGnEg707ZS52cV2aGYAppwe
         zRJ50LFSQszSPhlOQSI9tck3W9SBzpSsIvN/dMpKUdGF+253ecPFjwQ/u9GrQ+FcRsmw
         fUV5MT+ELCquql4Cq6qlqBYLdO2QcURVdH/OZSi+wUN1Ws36KoAzeb1nPWss7LXAJS5m
         8arkvuBHoz/tJA5GLlxTPuFK79UcGqvqrsLdM1pVOD7tYcbvJWUpBF6RM1+Lt6OXGqJ/
         XXAg==
X-Gm-Message-State: AOJu0YzxgMQZViW+8nelmQMYtuV6UHrCpVqmF9uTAb8kLsQFQ3tNyBV2
	fWWxCW7N9VdDcNH2or8bFjBp6Of86Z2Wb/DM4YU7ltw0uWw=
X-Google-Smtp-Source: AGHT+IFSg7qc02MwkSINttHQk+dPmlUlWCGmO1t3NI4eeTm/8j7Cry411hedLpZUYcHY91J4PG5KY+5SHzxywSPeIvw=
X-Received: by 2002:a17:90a:4815:b0:276:7907:ecf with SMTP id
 a21-20020a17090a481500b0027679070ecfmr612804pjh.36.1696372293117; Tue, 03 Oct
 2023 15:31:33 -0700 (PDT)
MIME-Version: 1.0
From: SIMON BABY <simonkbaby@gmail.com>
Date: Tue, 3 Oct 2023 15:31:22 -0700
Message-ID: <CAEFUPH2rWzVXjDJD5qRuTzjLOCGcwzxfsDOwEP-7OocBPbKgCQ@mail.gmail.com>
Subject: devtool build error
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f02c450606d773a4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 22:31:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61225

--000000000000f02c450606d773a4
Content-Type: text/plain; charset="UTF-8"

Hello Team,


Can someone help to fix the error I see when using devtool build or devtool
update-recipe.


*Exception: bb.fetch2.FetchError: Fetcher failure: Recipe uses a floating
tag/branch '5.15/linux' for repo 'github.com/intel/linux-intel-lts.git
<http://github.com/intel/linux-intel-lts.git>' without a fixed SRCREV yet
doesn't call bb.fetch2.get_srcrev() (use SRCPV in PV for OE).*



complete log is below:



sbaby@ECP-WAP-APPSERVER:~/workspace/09252023/ecp-wap-appserver/build$
devtool build linux-intel

NOTE: Starting bitbake server...

WARNING: Layer summit-radio should set LAYERSERIES_COMPAT_summit-radio in
its conf/layer.conf file to list the core layer names it is compatible with.

NOTE: Reconnecting to bitbake server...

NOTE: Retrying server connection (#1)...

WARNING: Layer summit-radio should set LAYERSERIES_COMPAT_summit-radio in
its conf/layer.conf file to list the core layer names it is compatible with.

Loading cache: 100%
|############################################################################################################################################################################|
Time: 0:00:00

Loaded 4588 entries from dependency cache.

ERROR:
/home/sbaby/workspace/09252023/ecp-wap-appserver/build/../iotg-yocto-ese-bsp/recipes-kernel/linux/
linux-intel_5.15.bb: Error executing a python function in
<code>:                      | ETA:  --:--:--



The stack trace of python calls that resulted in this exception/failure was:

File: '<code>', lineno: 19, function: <module>


0015:__anon_41__home_sbaby_workspace_09252023_ecp_wap_appserver_build____iotg_yocto_ese_bsp_classes_kernel_oot_mod_scripts_bbclass(d)


0016:__anon_22__home_sbaby_workspace_09252023_ecp_wap_appserver_build____poky_meta_classes_image_artifact_names_bbclass(d)


0017:__anon_7__home_sbaby_workspace_09252023_ecp_wap_appserver_build____poky_meta_classes_kernel_devicetree_bbclass(d)


0018:__anon_721__home_sbaby_workspace_09252023_ecp_wap_appserver_build____poky_meta_classes_kernel_yocto_bbclass(d)

***
0019:__anon_147__home_sbaby_workspace_09252023_ecp_wap_appserver_build____poky_meta_classes_externalsrc_bbclass(d)

File:
'/home/sbaby/workspace/09252023/ecp-wap-appserver/build/../poky/meta/classes/externalsrc.bbclass',
lineno: 66, function:
__anon_147__home_sbaby_workspace_09252023_ecp_wap_appserver_build____poky_meta_classes_externalsrc_bbclass

     0062:        else:

     0063:            d.setVar('B', '${WORKDIR}/${BPN}-${PV}')

     0064:

     0065:        local_srcuri = []

*** 0066:        fetch = bb.fetch2.Fetch((d.getVar('SRC_URI') or
'').split(), d)

     0067:        for url in fetch.urls:

     0068:            url_data = fetch.ud[url]

     0069:            parm = url_data.parm

     0070:            if (url_data.type == 'file' or

File:
'/home/sbaby/workspace/09252023/ecp-wap-appserver/poky/bitbake/lib/bb/fetch2/__init__.py',
lineno: 1682, function: __init__

     1678:

     1679:        for url in urls:

     1680:            if url not in self.ud:

     1681:                try:

*** 1682:                    self.ud[url] = FetchData(url, d, localonly)

     1683:                except NonLocalMethod:

     1684:                    if localonly:

     1685:                        self.ud[url] = None

     1686:                        pass

File:
'/home/sbaby/workspace/09252023/ecp-wap-appserver/poky/bitbake/lib/bb/fetch2/__init__.py',
lineno: 1319, function: __init__

     1315:            logger.warning('Consider updating %s recipe to use
"protocol" not "proto" in SRC_URI.', d.getVar('PN'))

     1316:            self.parm["protocol"] = self.parm.get("proto", None)

     1317:

     1318:        if hasattr(self.method, "urldata_init"):

*** 1319:            self.method.urldata_init(self, d)

     1320:

     1321:        if "localpath" in self.parm:

     1322:            # if user sets localpath for file, use it instead.

     1323:            self.localpath = self.parm["localpath"]

File:
'/home/sbaby/workspace/09252023/ecp-wap-appserver/poky/bitbake/lib/bb/fetch2/git.py',
lineno: 250, function: urldata_init

     0246:        write_tarballs = d.getVar("BB_GENERATE_MIRROR_TARBALLS")
or "0"

     0247:        ud.write_tarballs = write_tarballs != "0" or ud.rebaseable

     0248:        ud.write_shallow_tarballs =
(d.getVar("BB_GENERATE_SHALLOW_TARBALLS") or write_tarballs) != "0"

     0249:

*** 0250:        ud.setup_revisions(d)

     0251:

     0252:        for name in ud.names:

     0253:            # Ensure anything that doesn't look like a sha256
checksum/revision is translated into one

     0254:            if not ud.revisions[name] or len(ud.revisions[name])
!= 40  or (False in [c in "abcdef0123456789" for c in ud.revisions[name]]):

File:
'/home/sbaby/workspace/09252023/ecp-wap-appserver/poky/bitbake/lib/bb/fetch2/__init__.py',
lineno: 1349, function: setup_revisions

     1345:

     1346:    def setup_revisions(self, d):

     1347:        self.revisions = {}

     1348:        for name in self.names:

*** 1349:            self.revisions[name] = srcrev_internal_helper(self, d,
name)

     1350:

     1351:        # add compatibility code for non name specified case

     1352:        if len(self.names) == 1:

     1353:            self.revision = self.revisions[self.names[0]]

File:
'/home/sbaby/workspace/09252023/ecp-wap-appserver/poky/bitbake/lib/bb/fetch2/__init__.py',
lineno: 1214, function: srcrev_internal_helper

     1210:

     1211:    if srcrev == "INVALID" or not srcrev:

     1212:        raise FetchError("Please set a valid SRCREV for url %s
(possible key names are %s, or use a ;rev=X URL parameter)" %
(str(attempts), ud.url), ud.url)

     1213:    if srcrev == "AUTOINC":

*** 1214:        srcrev = ud.method.latest_revision(ud, d, name)

     1215:

     1216:    return srcrev

     1217:

     1218:def get_checksum_file_list(d):

File:
'/home/sbaby/workspace/09252023/ecp-wap-appserver/poky/bitbake/lib/bb/fetch2/__init__.py',
lineno: 1626, function: latest_revision

     1622:        key = self.generate_revision_key(ud, d, name)

     1623:        try:

     1624:            return revs[key]

     1625:        except KeyError:

*** 1626:            revs[key] = rev = self._latest_revision(ud, d, name)

     1627:            return rev

     1628:

     1629:    def sortable_revision(self, ud, d, name):

     1630:        latest_rev = self._build_revision(ud, d, name)

File:
'/home/sbaby/workspace/09252023/ecp-wap-appserver/poky/bitbake/lib/bb/fetch2/git.py',
lineno: 739, function: _latest_revision

     0735:        """

     0736:        Compute the HEAD revision for the url

     0737:        """

     0738:        if not d.getVar("__BBSEENSRCREV"):

*** 0739:            raise bb.fetch2.FetchError("Recipe uses a floating
tag/branch '%s' for repo '%s' without a fixed SRCREV yet doesn't call
bb.fetch2.get_srcrev() (use SRCPV in PV for OE)." %
(ud.unresolvedrev[name], ud.host+ud.path))

     0740:

     0741:        # Ensure we mark as not cached

     0742:        bb.fetch2.get_autorev(d)

     0743:

*Exception: bb.fetch2.FetchError: Fetcher failure: Recipe uses a floating
tag/branch '5.15/linux' for repo 'github.com/intel/linux-intel-lts.git
<http://github.com/intel/linux-intel-lts.git>' without a fixed SRCREV yet
doesn't call bb.fetch2.get_srcrev() (use SRCPV in PV for OE).*



ERROR: Parsing halted due to errors, see error messages above



Summary: There was 1 WARNING message.

Summary: There were 2 ERROR messages, returning a non-zero exit code.

ERROR: Failed to start bitbake environment



Regards

Simon

--000000000000f02c450606d773a4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal">Hello Team,</p><p class=3D"MsoNorma=
l"><br></p><p class=3D"MsoNormal">Can someone help to fix the error I see w=
hen using devtool build=C2=A0or devtool update-recipe.=C2=A0</p><p class=3D=
"MsoNormal"><br></p><p class=3D"MsoNormal"><b><font color=3D"#ff9900">Excep=
tion: bb.fetch2.FetchError: Fetcher failure: Recipe uses a floating tag/bra=
nch &#39;5.15/linux&#39; for repo &#39;<a href=3D"http://github.com/intel/l=
inux-intel-lts.git" target=3D"_blank">github.com/intel/linux-intel-lts.git<=
/a>&#39; without a fixed SRCREV yet doesn&#39;t call bb.fetch2.get_srcrev()=
 (use SRCPV in PV for OE).</font></b><br></p><p class=3D"MsoNormal"><br></p=
><p class=3D"MsoNormal"><br></p><p class=3D"MsoNormal">complete log is belo=
w:</p><p class=3D"MsoNormal"><br></p><p class=3D"MsoNormal"><br></p><p clas=
s=3D"MsoNormal">sbaby@ECP-WAP-APPSERVER:~/workspace/09252023/ecp-wap-appser=
ver/build$ devtool build linux-intel<u></u><u></u></p><p class=3D"MsoNormal=
">NOTE: Starting bitbake server...<u></u><u></u></p><p class=3D"MsoNormal">=
WARNING: Layer summit-radio should set LAYERSERIES_COMPAT_summit-radio in i=
ts conf/layer.conf file to list the core layer names it is compatible with.=
<u></u><u></u></p><p class=3D"MsoNormal">NOTE: Reconnecting to bitbake serv=
er...<u></u><u></u></p><p class=3D"MsoNormal">NOTE: Retrying server connect=
ion (#1)...<u></u><u></u></p><p class=3D"MsoNormal">WARNING: Layer summit-r=
adio should set LAYERSERIES_COMPAT_summit-radio in its conf/layer.conf file=
 to list the core layer names it is compatible with.<u></u><u></u></p><p cl=
ass=3D"MsoNormal">Loading cache: 100% |####################################=
###########################################################################=
#############################################################| Time: 0:00:0=
0<u></u><u></u></p><p class=3D"MsoNormal">Loaded 4588 entries from dependen=
cy cache.<u></u><u></u></p><p class=3D"MsoNormal">ERROR: /home/sbaby/worksp=
ace/09252023/ecp-wap-appserver/build/../iotg-yocto-ese-bsp/recipes-kernel/l=
inux/<a href=3D"http://linux-intel_5.15.bb/" target=3D"_blank">linux-intel_=
5.15.bb</a>: Error executing a python function in &lt;code&gt;:=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ETA:=C2=A0 --:--:--<u></u><u></u>=
</p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">T=
he stack trace of python calls that resulted in this exception/failure was:=
<u></u><u></u></p><p class=3D"MsoNormal">File: &#39;&lt;code&gt;&#39;, line=
no: 19, function: &lt;module&gt;<u></u><u></u></p><p class=3D"MsoNormal">=
=C2=A0=C2=A0=C2=A0=C2=A0 0015:__anon_41__home_sbaby_workspace_09252023_ecp_=
wap_appserver_build____iotg_yocto_ese_bsp_classes_kernel_oot_mod_scripts_bb=
class(d)<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0=
016:__anon_22__home_sbaby_workspace_09252023_ecp_wap_appserver_build____pok=
y_meta_classes_image_artifact_names_bbclass(d)<u></u><u></u></p><p class=3D=
"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0017:__anon_7__home_sbaby_workspace_09=
252023_ecp_wap_appserver_build____poky_meta_classes_kernel_devicetree_bbcla=
ss(d)<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0018=
:__anon_721__home_sbaby_workspace_09252023_ecp_wap_appserver_build____poky_=
meta_classes_kernel_yocto_bbclass(d)<u></u><u></u></p><p class=3D"MsoNormal=
">*** 0019:__anon_147__home_sbaby_workspace_09252023_ecp_wap_appserver_buil=
d____poky_meta_classes_externalsrc_bbclass(d)<u></u><u></u></p><p class=3D"=
MsoNormal">File: &#39;/home/sbaby/workspace/09252023/ecp-wap-appserver/buil=
d/../poky/meta/classes/externalsrc.bbclass&#39;, lineno: 66, function: __an=
on_147__home_sbaby_workspace_09252023_ecp_wap_appserver_build____poky_meta_=
classes_externalsrc_bbclass<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=
=C2=A0=C2=A0=C2=A0 0062:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:<u>=
</u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0063:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 d.setVar(&#39;=
B&#39;, &#39;${WORKDIR}/${BPN}-${PV}&#39;)<u></u><u></u></p><p class=3D"Mso=
Normal">=C2=A0=C2=A0=C2=A0=C2=A0 0064:<u></u><u></u></p><p class=3D"MsoNorm=
al">=C2=A0=C2=A0=C2=A0=C2=A0 0065:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 local_srcuri =3D []<u></u><u></u></p><p class=3D"MsoNormal">*** 0066:=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fetch =3D bb.fetch2.Fetch((d.get=
Var(&#39;SRC_URI&#39;) or &#39;&#39;).split(), d)<u></u><u></u></p><p class=
=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0067:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 for url in fetch.urls:<u></u><u></u></p><p class=3D"MsoNormal"=
>=C2=A0=C2=A0=C2=A0=C2=A0 0068:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 url_data =3D fetch.ud[url]<u></u><u></u></p><p cla=
ss=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0069:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 parm =3D url_data.parm<u></u><u></u=
></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0070:=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (url_data.type =3D=
=3D &#39;file&#39; or<u></u><u></u></p><p class=3D"MsoNormal">File: &#39;/h=
ome/sbaby/workspace/09252023/ecp-wap-appserver/poky/bitbake/lib/bb/fetch2/_=
_init__.py&#39;, lineno: 1682, function: __init__<u></u><u></u></p><p class=
=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1678:<u></u><u></u></p><p class=3D"=
MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1679:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 for url in urls:<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=
=C2=A0=C2=A0=C2=A0 1680:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 if url not in self.ud:<u></u><u></u></p><p class=3D"MsoNorm=
al">=C2=A0=C2=A0=C2=A0=C2=A0 1681:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:<u></u><u></u></p><=
p class=3D"MsoNormal">*** 1682:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 se=
lf.ud[url] =3D FetchData(url, d, localonly)<u></u><u></u></p><p class=3D"Ms=
oNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1683:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 except NonLocalMetho=
d:<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1684:=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if localonly:<u></u><u></u></p><p c=
lass=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1685:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ud[url] =3D None<u></u><u></u>=
</p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1686:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pass<u></u><u></u></p><p clas=
s=3D"MsoNormal">File: &#39;/home/sbaby/workspace/09252023/ecp-wap-appserver=
/poky/bitbake/lib/bb/fetch2/__init__.py&#39;, lineno: 1319, function: __ini=
t__<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1315:=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 logger.w=
arning(&#39;Consider updating %s recipe to use &quot;protocol&quot; not &qu=
ot;proto&quot; in SRC_URI.&#39;, d.getVar(&#39;PN&#39;))<u></u><u></u></p><=
p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1316:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.parm[&quot;protocol&quot=
;] =3D self.parm.get(&quot;proto&quot;, None)<u></u><u></u></p><p class=3D"=
MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1317:<u></u><u></u></p><p class=3D"MsoN=
ormal">=C2=A0=C2=A0=C2=A0=C2=A0 1318:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 if hasattr(self.method, &quot;urldata_init&quot;):<u></u><u></u></p>=
<p class=3D"MsoNormal">*** 1319:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 self.method.urldata_init(self, d)<u></u><u></u></p=
><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1320:<u></u><u></u></p><p =
class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1321:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 if &quot;localpath&quot; in self.parm:<u></u><u></u></p>=
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1322:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # if user sets localpath for =
file, use it instead.<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=
=C2=A0=C2=A0 1323:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 self.localpath =3D self.parm[&quot;localpath&quot;]<u></u><u></u>=
</p><p class=3D"MsoNormal">File: &#39;/home/sbaby/workspace/09252023/ecp-wa=
p-appserver/poky/bitbake/lib/bb/fetch2/git.py&#39;, lineno: 250, function: =
urldata_init<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=
=A0 0246:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 write_tarballs =3D d.ge=
tVar(&quot;BB_GENERATE_MIRROR_TARBALLS&quot;) or &quot;0&quot;<u></u><u></u=
></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0247:=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ud.write_tarballs =3D write_tarballs !=3D &quot=
;0&quot; or ud.rebaseable<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=
=A0=C2=A0=C2=A0 0248:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ud.write_sh=
allow_tarballs =3D (d.getVar(&quot;BB_GENERATE_SHALLOW_TARBALLS&quot;) or w=
rite_tarballs) !=3D &quot;0&quot;<u></u><u></u></p><p class=3D"MsoNormal">=
=C2=A0=C2=A0=C2=A0=C2=A0 0249:<u></u><u></u></p><p class=3D"MsoNormal">*** =
0250:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ud.setup_revisions(d)<u></u=
><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0251:<u></u><u>=
</u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0252:=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for name in ud.names:<u></u><u></u></p><p cl=
ass=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0253:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Ensure anything that doesn&#39;t =
look like a sha256 checksum/revision is translated into one<u></u><u></u></=
p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0254:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if not ud.revisions[name] =
or len(ud.revisions[name]) !=3D 40=C2=A0 or (False in [c in &quot;abcdef012=
3456789&quot; for c in ud.revisions[name]]):<u></u><u></u></p><p class=3D"M=
soNormal">File: &#39;/home/sbaby/workspace/09252023/ecp-wap-appserver/poky/=
bitbake/lib/bb/fetch2/__init__.py&#39;, lineno: 1349, function: setup_revis=
ions<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1345:=
<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1346:=C2=
=A0=C2=A0=C2=A0 def setup_revisions(self, d):<u></u><u></u></p><p class=3D"=
MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1347:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 self.revisions =3D {}<u></u><u></u></p><p class=3D"MsoNormal">=C2=
=A0=C2=A0=C2=A0=C2=A0 1348:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for n=
ame in self.names:<u></u><u></u></p><p class=3D"MsoNormal">*** 1349:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.revisions=
[name] =3D srcrev_internal_helper(self, d, name)<u></u><u></u></p><p class=
=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1350:<u></u><u></u></p><p class=3D"=
MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1351:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 # add compatibility code for non name specified case<u></u><u></u=
></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1352:=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 if len(self.names) =3D=3D 1:<u></u><u></u></p><=
p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1353:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.revision =3D self.revisi=
ons[self.names[0]]<u></u><u></u></p><p class=3D"MsoNormal">File: &#39;/home=
/sbaby/workspace/09252023/ecp-wap-appserver/poky/bitbake/lib/bb/fetch2/__in=
it__.py&#39;, lineno: 1214, function: srcrev_internal_helper<u></u><u></u><=
/p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1210:<u></u><u></u></p><=
p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1211:=C2=A0=C2=A0=C2=A0 if s=
rcrev =3D=3D &quot;INVALID&quot; or not srcrev:<u></u><u></u></p><p class=
=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1212:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 raise FetchError(&quot;Please set a valid SRCREV for url %s (p=
ossible key names are %s, or use a ;rev=3DX URL parameter)&quot; % (str(att=
empts), ud.url), ud.url)<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=
=A0=C2=A0=C2=A0 1213:=C2=A0=C2=A0=C2=A0 if srcrev =3D=3D &quot;AUTOINC&quot=
;:<u></u><u></u></p><p class=3D"MsoNormal">*** 1214:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 srcrev =3D ud.method.latest_revision(ud, d, name)<u><=
/u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1215:<u></u><=
u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1216:=C2=A0=C2=A0=
=C2=A0 return srcrev<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=
=C2=A0=C2=A0 1217:<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=
=A0=C2=A0 1218:def get_checksum_file_list(d):<u></u><u></u></p><p class=3D"=
MsoNormal">File: &#39;/home/sbaby/workspace/09252023/ecp-wap-appserver/poky=
/bitbake/lib/bb/fetch2/__init__.py&#39;, lineno: 1626, function: latest_rev=
ision<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1622=
:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 key =3D self.generate_revision_=
key(ud, d, name)<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=
=C2=A0 1623:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:<u></u><u></u></=
p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1624:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return revs[key]<u></u><u>=
</u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 =C2=A01625:=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 except KeyError:<u></u><u></u></p><p class=
=3D"MsoNormal">*** 1626:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 revs[key] =3D rev =3D self._latest_revision(ud, d, name)<u>=
</u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1627:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return rev<u><=
/u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1628:<u></u><=
u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1629:=C2=A0=C2=A0=
=C2=A0 def sortable_revision(self, ud, d, name):<u></u><u></u></p><p class=
=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 1630:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 latest_rev =3D self._build_revision(ud, d, name)<u></u><u></u>=
</p><p class=3D"MsoNormal">File: &#39;/home/sbaby/workspace/09252023/ecp-wa=
p-appserver/poky/bitbake/lib/bb/fetch2/git.py&#39;, lineno: 739, function: =
_latest_revision<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0 =C2=
=A0=C2=A00735:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;&quot;&quot;=
<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0736:=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Compute the HEAD revision for the u=
rl<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0737:=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;&quot;&quot;<u></u><u></u>=
</p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0738:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 if not d.getVar(&quot;__BBSEENSRCREV&quot;):<u></u=
><u></u></p><p class=3D"MsoNormal">*** 0739:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise bb.fetch2.FetchError(&quot;Recip=
e uses a floating tag/branch &#39;%s&#39; for repo &#39;%s&#39; without a f=
ixed SRCREV yet doesn&#39;t call bb.fetch2.get_srcrev() (use SRCPV in PV fo=
r OE).&quot; % (ud.unresolvedrev[name], ud.host+ud.path))<u></u><u></u></p>=
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0740:<u></u><u></u></p><p c=
lass=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0741:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 # Ensure we mark as not cached<u></u><u></u></p><p class=
=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 0742:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 bb.fetch2.get_autorev(d)<u></u><u></u></p><p class=3D"MsoNorma=
l">=C2=A0=C2=A0=C2=A0=C2=A0 0743:<u></u><u></u></p><p class=3D"MsoNormal"><=
b><font color=3D"#ff9900">Exception: bb.fetch2.FetchError: Fetcher failure:=
 Recipe uses a floating tag/branch &#39;5.15/linux&#39; for repo &#39;<a hr=
ef=3D"http://github.com/intel/linux-intel-lts.git" target=3D"_blank">github=
.com/intel/linux-intel-lts.git</a>&#39; without a fixed SRCREV yet doesn&#3=
9;t call bb.fetch2.get_srcrev() (use SRCPV in PV for OE).</font></b><u></u>=
<u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNo=
rmal">ERROR: Parsing halted due to errors, see error messages above<u></u><=
u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNor=
mal">Summary: There was 1 WARNING message.<u></u><u></u></p><p class=3D"Mso=
Normal">Summary: There were 2 ERROR messages, returning a non-zero exit cod=
e.<u></u><u></u></p><p class=3D"MsoNormal">ERROR: Failed to start bitbake e=
nvironment</p><p class=3D"MsoNormal"><br></p><p class=3D"MsoNormal"><br></p=
><p class=3D"MsoNormal">Regards</p><p class=3D"MsoNormal">Simon</p></div>

--000000000000f02c450606d773a4--

