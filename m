Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D0FC25B47
	for <webhook@archiver.kernel.org>; Fri, 27 Oct 2023 22:28:39 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
 by mx.groups.io with SMTP id smtpd.web10.28112.1698445715016608919
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Oct 2023 15:28:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UJHUvj89;
 spf=pass (domain: gmail.com, ip: 209.85.128.178, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5af5b532d8fso14348457b3.2
        for <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 15:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698445714; x=1699050514; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BiIwUDg58ji/H+2jU4BRbz4aKph6f/98r3PoEqPQj+I=;
        b=UJHUvj89Tvhphp0Tf0OpN/ApDn9/ZQtwn8lVIFDxgF35mM0JjUBeJsj7LX1bXOscBt
         GfiN+v1uopW8np6SBMF5gAYD7rG+6BeP7msP34w5tqEuH4S0lIJccTOMIVij5N/FMyvZ
         +2cy9dQ07CER2Pv/pnMPm1br10btkbwR7o9meLc9IG7hK8H6YiwCjAf8dozQZ8tje1IS
         y17OEnhudX1GNNgrRrigrhYuyaAB0O1ISeLxzMEngzfK+3Z2BAVySOy23knVg6Sh5yGJ
         2fzQ08U0hwpIPGwgDEjHM/Leux1WuJO/LzGeDQABEJXL1piOJEGOal+XMbdN0qilerEF
         I99Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698445714; x=1699050514;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BiIwUDg58ji/H+2jU4BRbz4aKph6f/98r3PoEqPQj+I=;
        b=KhF3XwCwJHIxaeJMULuPWEp6zArGshVgAXS41ZAnbzA86N9tQPEQ7iWylB7JJguwXt
         qAPFcOMG1NADgs9Lgr+dzMOwq9Tv9lha6gmdpsqtPZA2VBm/o0RT9YQVDQt3EIOxmq0M
         zCwisIvSAKdw6Kpt9rMikJCEmu2i6BW7P6gOdFwNcgn9I9bFm2cvG6feEcuEpAC+yqyp
         Kig3bTPKRhgjxIR+vp6jOmCO2SvDs8jezcI72E7iNJfTHPHXu+jgCjUkiCndlS4cGpXm
         DO6/FX6wfstkiJJ0ys5G3/dGFNZpP29MpH9joXT1QprrbEyXPC38s5zuLbjzoKXRfshG
         vMOw==
X-Gm-Message-State: AOJu0YwTqQvWUqOP6Pk74M4yp0u5755cRcr40mCYk12I4W74cNVjmg+m
	5Nu3LfNONXMyA2TedNwIDKrEKTykSOK1beus+to=
X-Google-Smtp-Source: AGHT+IGsRoN0Jssd3m/4ne9zplnbfAwcIBqAX5HA3tA1r5YL2w5vzozP7td79Un1K2hA+BrsfZ5DTBdKpYKMVwxT0MI=
X-Received: by 2002:a81:e40e:0:b0:5a7:ba54:af02 with SMTP id
 r14-20020a81e40e000000b005a7ba54af02mr3869774ywl.38.1698445714055; Fri, 27
 Oct 2023 15:28:34 -0700 (PDT)
MIME-Version: 1.0
References: <179216DF63AFAF8D.3183@lists.yoctoproject.org>
In-Reply-To: <179216DF63AFAF8D.3183@lists.yoctoproject.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 27 Oct 2023 15:28:22 -0700
Message-ID: <CANx9H-AB8_vmWzSWZb6DKMQh5qoC=r8GpO-qSvxp-9QATTCqow@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] scripts: add list-yp-compatible-layers.py
To: ticotimo@gmail.com
Cc: yocto@lists.yoctoproject.org, Tim Orling <tim.orling@konsulko.com>
Content-Type: multipart/alternative; boundary="00000000000074e69a0608ba3592"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 22:28:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61505

--00000000000074e69a0608ba3592
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please hold off on this version, there is an error in the layers set()
handling. I will send a v2.

On Fri, Oct 27, 2023 at 3:19=E2=80=AFPM Tim Orling via lists.yoctoproject.o=
rg
<ticotimo=3Dgmail.com@lists.yoctoproject.org> wrote:

> This is a handy helper script to query the Buildbot REST API to
> create a list of Yocto Project Compatible 2.0 layers, as defined by
> successful running of the "check-layers*" jobs.
>
> The script only considers the 'jobs' ("Builders" in Buildbot speak) you
> ask it to query.
>
> The script looks at the latest -n successful builds for a branch that
> matches from a list. The number of builds approach was used because
> the property_list cannot be queried for "branch" in the "builders" API.
>
> It looks for a "step" name pattern via a regex, with which all currently
> running "check-layer" and "check-layer-nightly" jobs conform.
>
> Once a branch has successfully been queried, it is removed from the list
> in further iterations. The intent is to only find the latest passing
> list of compatible layers, for each branch.
>
> The output is a yp_compatible_layers.json file which can
> be pretty printed with:
>
> cat yp_compatible_layers.json | jq
>
> Signed-off-by: Tim Orling <tim.orling@konsulko.com>
> ---
>  scripts/list-yp-compatible-layers.py | 155 +++++++++++++++++++++++++++
>  1 file changed, 155 insertions(+)
>  create mode 100755 scripts/list-yp-compatible-layers.py
>
> diff --git a/scripts/list-yp-compatible-layers.py
> b/scripts/list-yp-compatible-layers.py
> new file mode 100755
> index 0000000..f247057
> --- /dev/null
> +++ b/scripts/list-yp-compatible-layers.py
> @@ -0,0 +1,155 @@
> +#!/usr/bin/env python3
> +
> +# Query layers that are Yocto Project Compatible (2.0) on the AutoBuilde=
r
> +# and make a yp_compatible_layers.json file as an output
> +#
> +# Copyright (C) 2023 Konsulko Group
> +# Author: Tim Orling <tim.orling@konsulko.com>
> +#
> +# Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
> +#
> +# Variables that should be modified for your needs (could become args)
> +#
> +# api_url:
> +#   the url for the Buildbot REST API on the AutoBuilder
> +# desired_branches:
> +#   list of branches to find a matching build for
> +# desired_jobs:
> +#   list of "Builders" on the AutoBuilder that perform the
> +#   actual compatibility checks
> +# output_filename:
> +#   name for the json file to output
> +#
> +# For "pretty" output:
> +#  cat yp_compatible_layers.json | jq
> +
> +import sys
> +import os
> +
> +sys.path.insert(0,
> os.path.realpath(os.path.join(os.path.dirname(__file__), '..')))
> +
> +import argparse
> +import logging
> +import re
> +import requests
> +import json
> +
> +
> +def main():
> +    # Setup logging
> +    logging.basicConfig(level=3Dlogging.INFO, format=3D"%(levelname)s:
> %(message)s")
> +    logger =3D logging.getLogger('list-yocto-project-compatible-layers')
> +
> +    parser =3D argparse.ArgumentParser(description=3D'query Yocto AutoBu=
ilder
> check-layer* jobs and create a json file of Yocto Compatible 2.0 layers')
> +
> +    parser.add_argument("-n", "--num-builds",
> +            help =3D "Limit the number of Auto Builder builds to query",
> +            action=3D"store", dest=3D"num_builds", default=3D20)
> +    parser.add_argument("-d", "--debug",
> +            help =3D "Enable debug output",
> +            action=3D"store_const", const=3Dlogging.DEBUG, dest=3D"logle=
vel",
> default=3Dlogging.INFO)
> +    parser.add_argument("-q", "--quiet",
> +            help =3D "Hide all output except error messages",
> +            action=3D"store_const", const=3Dlogging.ERROR, dest=3D"logle=
vel")
> +
> +    args =3D parser.parse_args()
> +
> +    logger.setLevel(args.loglevel)
> +
> +    api_url =3D 'https://autobuilder.yoctoproject.org/typhoon/api/v2'
> +    desired_branches =3D {"dunfell", "kirkstone", "mickledore", "nanbiel=
d",
> "master"}
> +    desired_jobs =3D {"check-layer", "check-layer-nightly"}
> +    num_builds =3D args.num_builds
> +    output_filename =3D 'yp_compatible_layers.json'
> +    builder_id=3Ddict()
> +    # get info about a builder
> +    # curl
> https://autobuilder.yoctoproject.org/typhoon/api/v2/builders?name=3Dcheck=
-layer
> +    builder_id['check_layer']=3D39
> +    builder_id['check_layer_nightly']=3D121
> +    # get the "api"
> +    # curl
> https://autobuilder.yoctoproject.org/typhoon/api/v2/application.spec
> +
> +    # get a specific step raw stdio log
> +    # curl
> https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/121/builds/1=
651/steps/11/logs/stdio/raw
> +
> +    # filter for strings in the name of a step
> +    # curl
> https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-=
nightly/builds/1651/steps?name__contains=3DTest
> +    # curl
> https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-=
nightly/builds/1651/steps?name__contains=3DRun&field=3Dname&field=3Dnumber
> +    #
> +    # get the latest build (NOTE: - in front of 'number' does reverse
> order)
> +    #
> https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-=
nightly/builds?order=3D-number&limit=3D1
> +    #
> +    # get list of properties for a build
> +    #
> https://autobuilder.yoctoproject.org/typhoon/api/v2/builds/453477/propert=
y_list
> +    #
> +    # get the buildid of a build from builders/ so the builds/<buildid>
> api can be queried for property_list
> +    # otherwise, we have no way to get the 'branch'
> +    #
> https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-=
nightly/builds?limit=3D10&field=3Dbuildid
> +
> +    def latest_builds(job, limit):
> +        # limit to successful builds (however, this includes Skip)
> +        url_str =3D
> f'{api_url}/builders/{job}/builds?state_string__contains=3Dsuccessful&lim=
it=3D{str(limit)}&order=3D-buildid&field=3Dbuildid&field=3Dstate_string'
> +        r =3D requests.get(url_str)
> +        return r
> +
> +    # set objects are not JSON serializable, so we convert our set to a
> list
> +    class YPCompatibleJSONEncoder(json.JSONEncoder):
> +        def default(self, obj):
> +            if isinstance(obj, set):
> +                return list(obj)
> +            return json.JSONEncoder.default(self, obj)
> +
> +    #latest_20 =3D requests.get('
> https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-=
nightly/builds?limit=3D20&order=3D-buildid&field=3Dbuildid
> ')
> +    compatible_dict =3D dict().fromkeys(desired_jobs,
> dict().fromkeys(desired_branches, set()))
> +    for job in desired_jobs:
> +        # we want a list we can decrement once a valid branch has been
> found
> +        copy_desired_branches =3D desired_branches.copy()
> +        logger.info(f'Processing at most {num_builds} builds for
> AutoBuilder job: {job}...')
> +        for builds in latest_builds(job, num_builds).json()['builds']:
> +            build_id=3Dbuilds['buildid']
> +            logger.debug(f'\tProcessing build: {build_id}...')
> +            url_str =3D
> f'{api_url}/builds/{build_id}/property_list?name=3Dyp_build_branch'
> +            #r =3D requests.get('
> https://autobuilder.yoctoproject.org/typhoon/api/v2/builds/%s/property_li=
st?name=3Dyp_build_branch'
> % builds['buildid'])
> +            r =3D requests.get(url_str)
> +            try:
> +                result_dict =3D r.json()['_properties'][0]
> +                branch =3D result_dict['value'].replace('"','')
> +            except:
> +                pass
> +            if branch in copy_desired_branches:
> +                logger.info(f'\tProcessing branch: {branch}...')
> +                url_str =3D
> f'{api_url}/builds/{build_id}/steps?name__contains=3DRun&field=3Dname&fie=
ld=3Dnumber'
> +                steps_req =3D requests.get(url_str)
> +                steps_dict =3D steps_req.json()['steps']
> +                for step in steps_dict:
> +                    try:
> +                        step_num =3D step['number']
> +                        # currently, meta-virtualization does not have
> 'cmds' so use a look ahead
> +                        repo_regex =3D re.compile(r"^Test (.+) YP
> Compatibility: Run(?: cmds)$")
> +                        repo =3D repo_regex.match(step['name']).group(1)
> +                    except:
> +                        pass
> +                    try:
> +                        url_str =3D
> f'{api_url}/builds/{build_id}/steps/{step_num}/logs/stdio/raw'
> +                        log_req =3D requests.get(url_str)
> +                        log =3D log_req.content.decode("utf-8")
> +                        # We only care about layers that have passed
> +                        layer_regex =3D re.compile(r"^INFO: (.+) ...
> PASS$", re.MULTILINE)
> +                        layers =3D layer_regex.findall(log)
> +                        if len(layers) > 0:
> +                            logger.info(f'\t\tDetected {layers}')
> +                        for layer in layers:
> +                            compatible_dict[job][branch].add(layer)
> +                    except:
> +                        sys.exit(1)
> +                copy_desired_branches.remove(branch)
> +    with open(output_filename, 'w') as f:
> +        json.dump(compatible_dict, f, cls=3DYPCompatibleJSONEncoder)
> +
> +    sys.exit(0)
> +
> +
> +if __name__ =3D=3D "__main__":
> +    main()
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61504):
> https://lists.yoctoproject.org/g/yocto/message/61504
> Mute This Topic: https://lists.yoctoproject.org/mt/102231417/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000074e69a0608ba3592
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please hold off on this version, there is an error in the =
layers set() handling. I will send a v2.</div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 27, 2023 at 3:19=E2=80=
=AFPM Tim Orling via <a href=3D"http://lists.yoctoproject.org">lists.yoctop=
roject.org</a> &lt;ticotimo=3D<a href=3D"mailto:gmail.com@lists.yoctoprojec=
t.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">This is a handy helper script to que=
ry the Buildbot REST API to<br>
create a list of Yocto Project Compatible 2.0 layers, as defined by<br>
successful running of the &quot;check-layers*&quot; jobs.<br>
<br>
The script only considers the &#39;jobs&#39; (&quot;Builders&quot; in Build=
bot speak) you<br>
ask it to query.<br>
<br>
The script looks at the latest -n successful builds for a branch that<br>
matches from a list. The number of builds approach was used because<br>
the property_list cannot be queried for &quot;branch&quot; in the &quot;bui=
lders&quot; API.<br>
<br>
It looks for a &quot;step&quot; name pattern via a regex, with which all cu=
rrently<br>
running &quot;check-layer&quot; and &quot;check-layer-nightly&quot; jobs co=
nform.<br>
<br>
Once a branch has successfully been queried, it is removed from the list<br=
>
in further iterations. The intent is to only find the latest passing<br>
list of compatible layers, for each branch.<br>
<br>
The output is a yp_compatible_layers.json file which can<br>
be pretty printed with:<br>
<br>
cat yp_compatible_layers.json | jq<br>
<br>
Signed-off-by: Tim Orling &lt;<a href=3D"mailto:tim.orling@konsulko.com" ta=
rget=3D"_blank">tim.orling@konsulko.com</a>&gt;<br>
---<br>
=C2=A0scripts/list-yp-compatible-layers.py | 155 ++++++++++++++++++++++++++=
+<br>
=C2=A01 file changed, 155 insertions(+)<br>
=C2=A0create mode 100755 scripts/list-yp-compatible-layers.py<br>
<br>
diff --git a/scripts/list-yp-compatible-layers.py b/scripts/list-yp-compati=
ble-layers.py<br>
new file mode 100755<br>
index 0000000..f247057<br>
--- /dev/null<br>
+++ b/scripts/list-yp-compatible-layers.py<br>
@@ -0,0 +1,155 @@<br>
+#!/usr/bin/env python3<br>
+<br>
+# Query layers that are Yocto Project Compatible (2.0) on the AutoBuilder<=
br>
+# and make a yp_compatible_layers.json file as an output<br>
+#<br>
+# Copyright (C) 2023 Konsulko Group<br>
+# Author: Tim Orling &lt;<a href=3D"mailto:tim.orling@konsulko.com" target=
=3D"_blank">tim.orling@konsulko.com</a>&gt;<br>
+#<br>
+# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
+#<br>
+# Variables that should be modified for your needs (could become args)<br>
+#<br>
+# api_url:<br>
+#=C2=A0 =C2=A0the url for the Buildbot REST API on the AutoBuilder<br>
+# desired_branches:<br>
+#=C2=A0 =C2=A0list of branches to find a matching build for<br>
+# desired_jobs:<br>
+#=C2=A0 =C2=A0list of &quot;Builders&quot; on the AutoBuilder that perform=
 the<br>
+#=C2=A0 =C2=A0actual compatibility checks<br>
+# output_filename:<br>
+#=C2=A0 =C2=A0name for the json file to output<br>
+#<br>
+# For &quot;pretty&quot; output:<br>
+#=C2=A0 cat yp_compatible_layers.json | jq<br>
+<br>
+import sys<br>
+import os<br>
+<br>
+sys.path.insert(0, os.path.realpath(os.path.join(os.path.dirname(__file__)=
, &#39;..&#39;)))<br>
+<br>
+import argparse<br>
+import logging<br>
+import re<br>
+import requests<br>
+import json<br>
+<br>
+<br>
+def main():<br>
+=C2=A0 =C2=A0 # Setup logging<br>
+=C2=A0 =C2=A0 logging.basicConfig(level=3Dlogging.INFO, format=3D&quot;%(l=
evelname)s: %(message)s&quot;)<br>
+=C2=A0 =C2=A0 logger =3D logging.getLogger(&#39;list-yocto-project-compati=
ble-layers&#39;)<br>
+<br>
+=C2=A0 =C2=A0 parser =3D argparse.ArgumentParser(description=3D&#39;query =
Yocto AutoBuilder check-layer* jobs and create a json file of Yocto Compati=
ble 2.0 layers&#39;)<br>
+<br>
+=C2=A0 =C2=A0 parser.add_argument(&quot;-n&quot;, &quot;--num-builds&quot;=
,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 help =3D &quot;Limit the number =
of Auto Builder builds to query&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 action=3D&quot;store&quot;, dest=
=3D&quot;num_builds&quot;, default=3D20)<br>
+=C2=A0 =C2=A0 parser.add_argument(&quot;-d&quot;, &quot;--debug&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 help =3D &quot;Enable debug outp=
ut&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 action=3D&quot;store_const&quot;=
, const=3Dlogging.DEBUG, dest=3D&quot;loglevel&quot;, default=3Dlogging.INF=
O)<br>
+=C2=A0 =C2=A0 parser.add_argument(&quot;-q&quot;, &quot;--quiet&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 help =3D &quot;Hide all output e=
xcept error messages&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 action=3D&quot;store_const&quot;=
, const=3Dlogging.ERROR, dest=3D&quot;loglevel&quot;)<br>
+<br>
+=C2=A0 =C2=A0 args =3D parser.parse_args()<br>
+<br>
+=C2=A0 =C2=A0 logger.setLevel(args.loglevel)<br>
+<br>
+=C2=A0 =C2=A0 api_url =3D &#39;<a href=3D"https://autobuilder.yoctoproject=
.org/typhoon/api/v2" rel=3D"noreferrer" target=3D"_blank">https://autobuild=
er.yoctoproject.org/typhoon/api/v2</a>&#39;<br>
+=C2=A0 =C2=A0 desired_branches =3D {&quot;dunfell&quot;, &quot;kirkstone&q=
uot;, &quot;mickledore&quot;, &quot;nanbield&quot;, &quot;master&quot;}<br>
+=C2=A0 =C2=A0 desired_jobs =3D {&quot;check-layer&quot;, &quot;check-layer=
-nightly&quot;}<br>
+=C2=A0 =C2=A0 num_builds =3D args.num_builds<br>
+=C2=A0 =C2=A0 output_filename =3D &#39;yp_compatible_layers.json&#39;<br>
+=C2=A0 =C2=A0 builder_id=3Ddict()<br>
+=C2=A0 =C2=A0 # get info about a builder<br>
+=C2=A0 =C2=A0 # curl <a href=3D"https://autobuilder.yoctoproject.org/typho=
on/api/v2/builders?name=3Dcheck-layer" rel=3D"noreferrer" target=3D"_blank"=
>https://autobuilder.yoctoproject.org/typhoon/api/v2/builders?name=3Dcheck-=
layer</a><br>
+=C2=A0 =C2=A0 builder_id[&#39;check_layer&#39;]=3D39<br>
+=C2=A0 =C2=A0 builder_id[&#39;check_layer_nightly&#39;]=3D121<br>
+=C2=A0 =C2=A0 # get the &quot;api&quot;<br>
+=C2=A0 =C2=A0 # curl <a href=3D"https://autobuilder.yoctoproject.org/typho=
on/api/v2/application.spec" rel=3D"noreferrer" target=3D"_blank">https://au=
tobuilder.yoctoproject.org/typhoon/api/v2/application.spec</a><br>
+<br>
+=C2=A0 =C2=A0 # get a specific step raw stdio log<br>
+=C2=A0 =C2=A0 # curl <a href=3D"https://autobuilder.yoctoproject.org/typho=
on/api/v2/builders/121/builds/1651/steps/11/logs/stdio/raw" rel=3D"noreferr=
er" target=3D"_blank">https://autobuilder.yoctoproject.org/typhoon/api/v2/b=
uilders/121/builds/1651/steps/11/logs/stdio/raw</a><br>
+<br>
+=C2=A0 =C2=A0 # filter for strings in the name of a step<br>
+=C2=A0 =C2=A0 # curl <a href=3D"https://autobuilder.yoctoproject.org/typho=
on/api/v2/builders/check-layer-nightly/builds/1651/steps?name__contains=3DT=
est" rel=3D"noreferrer" target=3D"_blank">https://autobuilder.yoctoproject.=
org/typhoon/api/v2/builders/check-layer-nightly/builds/1651/steps?name__con=
tains=3DTest</a><br>
+=C2=A0 =C2=A0 # curl <a href=3D"https://autobuilder.yoctoproject.org/typho=
on/api/v2/builders/check-layer-nightly/builds/1651/steps?name__contains=3DR=
un&amp;field=3Dname&amp;field=3Dnumber" rel=3D"noreferrer" target=3D"_blank=
">https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-=
nightly/builds/1651/steps?name__contains=3DRun&amp;field=3Dname&amp;field=
=3Dnumber</a><br>
+=C2=A0 =C2=A0 #<br>
+=C2=A0 =C2=A0 # get the latest build (NOTE: - in front of &#39;number&#39;=
 does reverse order)<br>
+=C2=A0 =C2=A0 # <a href=3D"https://autobuilder.yoctoproject.org/typhoon/ap=
i/v2/builders/check-layer-nightly/builds?order=3D-number&amp;limit=3D1" rel=
=3D"noreferrer" target=3D"_blank">https://autobuilder.yoctoproject.org/typh=
oon/api/v2/builders/check-layer-nightly/builds?order=3D-number&amp;limit=3D=
1</a><br>
+=C2=A0 =C2=A0 #<br>
+=C2=A0 =C2=A0 # get list of properties for a build<br>
+=C2=A0 =C2=A0 # <a href=3D"https://autobuilder.yoctoproject.org/typhoon/ap=
i/v2/builds/453477/property_list" rel=3D"noreferrer" target=3D"_blank">http=
s://autobuilder.yoctoproject.org/typhoon/api/v2/builds/453477/property_list=
</a><br>
+=C2=A0 =C2=A0 #<br>
+=C2=A0 =C2=A0 # get the buildid of a build from builders/ so the builds/&l=
t;buildid&gt; api can be queried for property_list<br>
+=C2=A0 =C2=A0 # otherwise, we have no way to get the &#39;branch&#39;<br>
+=C2=A0 =C2=A0 # <a href=3D"https://autobuilder.yoctoproject.org/typhoon/ap=
i/v2/builders/check-layer-nightly/builds?limit=3D10&amp;field=3Dbuildid" re=
l=3D"noreferrer" target=3D"_blank">https://autobuilder.yoctoproject.org/typ=
hoon/api/v2/builders/check-layer-nightly/builds?limit=3D10&amp;field=3Dbuil=
did</a><br>
+<br>
+=C2=A0 =C2=A0 def latest_builds(job, limit):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 # limit to successful builds (however, this in=
cludes Skip)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 url_str =3D f&#39;{api_url}/builders/{job}/bui=
lds?state_string__contains=3Dsuccessful&amp;limit=3D{str(limit)}&amp;order=
=3D-buildid&amp;field=3Dbuildid&amp;field=3Dstate_string&#39;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 r =3D requests.get(url_str)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return r<br>
+<br>
+=C2=A0 =C2=A0 # set objects are not JSON serializable, so we convert our s=
et to a list<br>
+=C2=A0 =C2=A0 class YPCompatibleJSONEncoder(json.JSONEncoder):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 def default(self, obj):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if isinstance(obj, set):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return list(obj)<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return json.JSONEncoder.default(=
self, obj)<br>
+<br>
+=C2=A0 =C2=A0 #latest_20 =3D requests.get(&#39;<a href=3D"https://autobuil=
der.yoctoproject.org/typhoon/api/v2/builders/check-layer-nightly/builds?lim=
it=3D20&amp;order=3D-buildid&amp;field=3Dbuildid" rel=3D"noreferrer" target=
=3D"_blank">https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/ch=
eck-layer-nightly/builds?limit=3D20&amp;order=3D-buildid&amp;field=3Dbuildi=
d</a>&#39;)<br>
+=C2=A0 =C2=A0 compatible_dict =3D dict().fromkeys(desired_jobs, dict().fro=
mkeys(desired_branches, set()))<br>
+=C2=A0 =C2=A0 for job in desired_jobs:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 # we want a list we can decrement once a valid=
 branch has been found<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 copy_desired_branches =3D desired_branches.cop=
y()<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://logger.info" rel=3D"noreferr=
er" target=3D"_blank">logger.info</a>(f&#39;Processing at most {num_builds}=
 builds for AutoBuilder job: {job}...&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 for builds in latest_builds(job, num_builds).j=
son()[&#39;builds&#39;]:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 build_id=3Dbuilds[&#39;buildid&#=
39;]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 logger.debug(f&#39;\tProcessing =
build: {build_id}...&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 url_str =3D f&#39;{api_url}/buil=
ds/{build_id}/property_list?name=3Dyp_build_branch&#39;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 #r =3D requests.get(&#39;<a href=
=3D"https://autobuilder.yoctoproject.org/typhoon/api/v2/builds/%s/property_=
list?name=3Dyp_build_branch" rel=3D"noreferrer" target=3D"_blank">https://a=
utobuilder.yoctoproject.org/typhoon/api/v2/builds/%s/property_list?name=3Dy=
p_build_branch</a>&#39; % builds[&#39;buildid&#39;])<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 r =3D requests.get(url_str)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 result_dict =3D r.=
json()[&#39;_properties&#39;][0]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 branch =3D result_=
dict[&#39;value&#39;].replace(&#39;&quot;&#39;,&#39;&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 except:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pass<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if branch in copy_desired_branch=
es:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://=
logger.info" rel=3D"noreferrer" target=3D"_blank">logger.info</a>(f&#39;\tP=
rocessing branch: {branch}...&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 url_str =3D f&#39;=
{api_url}/builds/{build_id}/steps?name__contains=3DRun&amp;field=3Dname&amp=
;field=3Dnumber&#39;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 steps_req =3D requ=
ests.get(url_str)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 steps_dict =3D ste=
ps_req.json()[&#39;steps&#39;]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for step in steps_=
dict:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 try:=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 step_num =3D step[&#39;number&#39;]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # currently, meta-virtualization does not have &#39;cmds&#39; so=
 use a look ahead<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 repo_regex =3D re.compile(r&quot;^Test (.+) YP Compatibility: Ru=
n(?: cmds)$&quot;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 repo =3D repo_regex.match(step[&#39;name&#39;]).group(1)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 exce=
pt:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 pass<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 try:=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 url_str =3D f&#39;{api_url}/builds/{build_id}/steps/{step_num}/l=
ogs/stdio/raw&#39;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 log_req =3D requests.get(url_str)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 log =3D log_req.content.decode(&quot;utf-8&quot;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # We only care about layers that have passed<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 layer_regex =3D re.compile(r&quot;^INFO: (.+) ... PASS$&quot;, r=
e.MULTILINE)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 layers =3D layer_regex.findall(log)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if len(layers) &gt; 0:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://logger.info" rel=3D"noreferrer" =
target=3D"_blank">logger.info</a>(f&#39;\t\tDetected {layers}&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 for layer in layers:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 compatible_dict[job][branch].add(layer)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 exce=
pt:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 sys.exit(1)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 copy_desired_branc=
hes.remove(branch)<br>
+=C2=A0 =C2=A0 with open(output_filename, &#39;w&#39;) as f:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 json.dump(compatible_dict, f, cls=3DYPCompatib=
leJSONEncoder)<br>
+<br>
+=C2=A0 =C2=A0 sys.exit(0)<br>
+<br>
+<br>
+if __name__ =3D=3D &quot;__main__&quot;:<br>
+=C2=A0 =C2=A0 main()<br>
-- <br>
2.34.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61504): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61504" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61504</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102231417/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/102231417/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000074e69a0608ba3592--

