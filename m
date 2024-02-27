Return-Path: <miriam.rico@enigmedia.es>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50382C5478C
	for <webhook@archiver.kernel.org>; Tue, 27 Feb 2024 11:24:30 +0000 (UTC)
Subject: Re: [yocto] Yocto Kirkstone VPP compilation
To: Ross Burton <ross.burton@arm.com>,yocto@lists.yoctoproject.org
From: miriam.rico@enigmedia.es
X-Originating-Location: FR (193.70.58.171)
X-Originating-Platform: Linux Chrome 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 27 Feb 2024 03:24:23 -0800
References: <E5C518BD-91D6-4F6D-9250-07BF313E7C80@arm.com>
In-Reply-To: <E5C518BD-91D6-4F6D-9250-07BF313E7C80@arm.com>
Message-ID: <12696.1709033063330466940@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QrwvGgeXh3Jvn6xnLRNh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Feb 2024 11:24:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62621

--QrwvGgeXh3Jvn6xnLRNh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

First of all, thank you for your help and sorry.

I checked Ross's comment again and saw that I had made a mistake in modifyi=
ng the recipe. That's why the compilation was failing and that's why I trie=
d another route.

After rereading the comment I have made the indicated changes and now the c=
ode compiles.

This would be the resulting recipe:

>=20
> DESCRIPTION =3D "Vector Packet Processing"
>=20
> STABLE =3D "stable/2310"
> BRANCH =3D "master"
> SRCREV =3D "6b287b53011208bc242040962056360c1ff54a6c"
> S =3D "${WORKDIR}/git"
> PV =3D "23.10"
>=20
> LICENSE =3D "Apache-2.0"
>=20
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D175792518e4ac015ab6696d16c4f60=
7e"
>=20
> SRC_URI +=3D "git://github.com/FDio/vpp;branch=3D${STABLE} \
> "
>=20
> OECMAKE_SOURCEPATH =3D "${S}/src"
>=20
> DEPENDS +=3D "openssl numactl curl-native cmake-native nasm-native
> python3-pip-native python3-ply-native ninja-native m4-native zlib-native
> binutils-native elfutils-native libpcap libbpf apt systemd bpftrace
> util-linux"
>=20
> inherit=C2=A0 cmake
>=20
> export OPENSSL_PATH =3D "${RECIPE_SYSROOT}"
>=20
> include vpp-packages.inc
>=20

Now that the code compiles, it gives me an error that the packages have bee=
n installed but that they have not been shipped in any package.

>=20
> ERROR: vpp-test-23.10-r0 do_package: QA Issue: vpp-test: Files/directorie=
s
> were installed but not shipped in any package:
> /usr/share
> /usr/share/vpp
> /usr/share/vpp/vppapigen_json.py
> /usr/share/vpp/generate_json.py
> /usr/share/vpp/vapi_cpp_gen.py
> /usr/share/vpp/vppapigen_c.py
> /usr/share/vpp/vapi_json_parser.py
> /usr/share/vpp/vapi_c_gen.py
> /usr/share/vpp/api
> /usr/share/vpp/api/core
> /usr/share/vpp/api/plugins
> /usr/share/vpp/api/core/tunnel_types.api.json
> /usr/share/vpp/api/core/span.api.json
> /usr/share/vpp/api/core/flow.api.json
> /usr/share/vpp/api/core/crypto.api.json
> /usr/share/vpp/api/core/session.api.json
> /usr/share/vpp/api/core/ip6_nd.api.json
> /usr/share/vpp/api/core/bier.api.json
> /usr/share/vpp/api/core/ip_types.api.json
> /usr/share/vpp/api/core/vpe_types.api.json
> /usr/share/vpp/api/core/memclnt.api.json
> /usr/share/vpp/api/core/pci_types.api.json
> /usr/share/vpp/api/core/vpe.api.json
> /usr/share/vpp/api/core/teib.api.json
> /usr/share/vpp/api/core/p2p_ethernet.api.json
> /usr/share/vpp/api/core/flow_types.api.json
> /usr/share/vpp/api/core/arp.api.json
> /usr/share/vpp/api/core/pipe.api.json
> /usr/share/vpp/api/core/sr_types.api.json
> /usr/share/vpp/api/core/policer_types.api.json
> /usr/share/vpp/api/core/ethernet_types.api.json
> /usr/share/vpp/api/plugins/vhost_user.api.json
> /usr/share/vpp/api/plugins/lisp_gpe.api.json
> /usr/share/vpp/api/plugins/pot.api.json
> /usr/share/vpp/api/plugins/dhcp.api.json
> /usr/share/vpp/api/plugins/tls_openssl.api.json
> /usr/share/vpp/api/plugins/ioam_cache.api.json
> /usr/share/vpp/api/plugins/igmp.api.json
> /usr/share/vpp/api/plugins/dns.api.json
> /usr/lib/vpp_api_test_plugins/vpp_api_test_plugin.so
> /usr/lib/vpp_api_test_plugins/lb_test_plugin.so
> /usr/lib/vpp_api_test_plugins/adl_test_plugin.so
> /usr/lib/vpp_api_test_plugins/memif_test_plugin.so
> /usr/lib/vpp_api_test_plugins/vmxnet3_test_plugin.so
> /usr/lib/vpp_api_test_plugins/vlib_vlibapi_test_plugin.so
> /usr/lib/vpp_api_test_plugins/vnet_arp_test_plugin.so
> /usr/lib/vpp_api_test_plugins/tracedump_test_plugin.so
> /usr/lib/vpp_api_test_plugins/builtinurl_test_plugin.so
> /usr/lib/vpp_api_test_plugins/flowprobe_test_plugin.so
> /usr/lib/vpp_api_test_plugins/arping_test_plugin.so
> /usr/lib/vpp_api_test_plugins/vrrp_test_plugin.so
> /usr/lib/python3.8/site-packages
> /usr/lib/python3.8/site-packages/vpp_papi
> /usr/lib/python3.8/site-packages/vpp_papi-2.0.0-py3.8.egg-info
> /usr/lib/python3.8/site-packages/vpp_papi/vpp_serializer.py
> /usr/lib/python3.8/site-packages/vpp_papi/vpp_papi.py
> /usr/lib/vpp_plugins/srv6adflow_plugin.so
> /usr/lib/vpp_plugins/dma_intel_plugin.so
> /usr/lib/vpp_plugins/af_packet_plugin.so
> /usr/lib/vpp_plugins/cdp_plugin.so
> /usr/lib/vpp_plugins/ip_session_redirect_plugin.so
> /usr/lib/vpp_plugins/oddbuf_plugin.so
> /usr/lib/vpp_plugins/hsi_plugin.so
> /usr/lib/vpp_plugins/pnat_plugin.so
> /usr/lib/vat2_plugins/pppoe_test_plugin_pppoe_plugin.so
> /usr/lib/vat2_plugins/vnet_l2_plugin.so
> /usr/lib/vat2_plugins/npt66_test_plugin_npt66_plugin.so
> /usr/lib/vat2_plugins/vnet_mpls_plugin.so
> /usr/lib/vat2_plugins/vnet_feature_plugin.so
> /usr/lib/vat2_plugins/vnet_ip6_nd_plugin.so
> /usr/lib/vat2_plugins/vnet_ipsec_plugin.so
> /usr/lib/vat2_plugins/lb_test_plugin_lb_types_plugin.so
> /usr/lib/vat2_plugins/cnat_test_plugin_cnat_plugin.so
> /usr/lib/vat2_plugins/vnet_session_plugin.so
> /usr/lib/vat2_plugins/gtpu_test_plugin_gtpu_plugin.so
> /usr/lib/vat2_plugins/vlibmemory_vlib_plugin.so
> /usr/lib/vat2_plugins/dns_test_plugin_dns_plugin.so
> /usr/lib/vat2_plugins/lisp_test_plugin_lisp_plugin.so
> /usr/lib/vat2_plugins/tracedump_test_plugin_tracedump_plugin.so
> /usr/lib/vat2_plugins/l2tp_test_plugin_l2tp_plugin.so
> /usr/lib/vat2_plugins/vnet_policer_plugin.so
> /usr/lib/vat2_plugins/af_packet_test_plugin_af_packet_plugin.so
> /usr/lib/vat2_plugins/flowprobe_test_plugin_flowprobe_plugin.so
> /usr/lib/vat2_plugins/http_static_test_plugin_http_static_plugin.so
> /usr/lib/vat2_plugins/vnet_pg_plugin.so
> /usr/lib/vat2_plugins/vnet_fib_types_plugin.so
> /usr/lib/vat2_plugins/lisp_test_plugin_one_plugin.so
> /usr/lib/vat2_plugins/vnet_ethernet_types_plugin.so
> /usr/lib/vat2_plugins/tracenode_test_plugin_tracenode_plugin.so
> /usr/lib/vat2_plugins/vxlan_test_plugin_vxlan_plugin.so
> /usr/lib/vat2_plugins/dhcp_test_plugin_dhcp6_ia_na_client_cp_plugin.so
> /usr/lib/vat2_plugins/dslite_test_plugin_dslite_plugin.so
> Please set FILES such that these items are packaged. Alternatively if the=
y
> are unneeded, avoid installing them or delete them within do_install.
> vpp-test: 430 installed and not shipped files. [installed-vs-shipped]
>=20

More packages appear but I have reduced the list.=C2=A0I'm modifying the re=
cipe to solve the problems I'm having.

Thank you very much for your help and sorry for the inconvenience.

--QrwvGgeXh3Jvn6xnLRNh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,<br /><br />First of all, thank you for your help and sorry.&nbsp;<b=
r /><br />I checked Ross's comment again and saw that I had made a mistake =
in modifying the recipe. That's why the compilation was failing and that's =
why I tried another route.&nbsp;<br /><br />After rereading the comment I h=
ave made the indicated changes and now the code compiles.<br /><br />This w=
ould be the resulting recipe:<br /><br />
<blockquote>
<div>DESCRIPTION =3D "Vector Packet Processing"</div>
<div>&nbsp;</div>
<div>STABLE =3D "stable/2310"</div>
<div>BRANCH =3D "master"</div>
<div>SRCREV =3D "6b287b53011208bc242040962056360c1ff54a6c"</div>
<div>S =3D "${WORKDIR}/git"</div>
<div>PV =3D "23.10"</div>
<div>&nbsp;</div>
<div>LICENSE =3D "Apache-2.0"</div>
<div>&nbsp;</div>
<div>LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D175792518e4ac015ab6696d16c4=
f607e"</div>
<div>&nbsp;</div>
<div>SRC_URI +=3D "git://github.com/FDio/vpp;branch=3D${STABLE} \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; "</div>
<div>&nbsp;</div>
<div>OECMAKE_SOURCEPATH =3D "${S}/src"</div>
<div>&nbsp;</div>
<div>DEPENDS +=3D "openssl numactl curl-native cmake-native nasm-native pyt=
hon3-pip-native python3-ply-native ninja-native m4-native zlib-native binut=
ils-native elfutils-native libpcap libbpf apt systemd bpftrace util-linux"<=
/div>
<div>&nbsp;</div>
<div>inherit&nbsp; cmake</div>
<div>&nbsp;</div>
<div>export OPENSSL_PATH =3D "${RECIPE_SYSROOT}"</div>
<div>&nbsp;</div>
<div>include vpp-packages.inc</div>
</blockquote>
Now that the code compiles, it gives me an error that the packages have bee=
n installed but that they have not been shipped in any package.<br /><br />
<blockquote>
<div>ERROR: vpp-test-23.10-r0 do_package: QA Issue: vpp-test: Files/directo=
ries were installed but not shipped in any package:</div>
<div>&nbsp; /usr/share</div>
<div>&nbsp; /usr/share/vpp</div>
<div>&nbsp; /usr/share/vpp/vppapigen_json.py</div>
<div>&nbsp; /usr/share/vpp/generate_json.py</div>
<div>&nbsp; /usr/share/vpp/vapi_cpp_gen.py</div>
<div>&nbsp; /usr/share/vpp/vppapigen_c.py</div>
<div>&nbsp; /usr/share/vpp/vapi_json_parser.py</div>
<div>&nbsp; /usr/share/vpp/vapi_c_gen.py</div>
<div>&nbsp; /usr/share/vpp/api</div>
<div>&nbsp; /usr/share/vpp/api/core</div>
<div>&nbsp; /usr/share/vpp/api/plugins</div>
<div>&nbsp; /usr/share/vpp/api/core/tunnel_types.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/span.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/flow.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/crypto.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/session.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/ip6_nd.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/bier.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/ip_types.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/vpe_types.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/memclnt.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/pci_types.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/vpe.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/teib.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/p2p_ethernet.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/flow_types.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/arp.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/pipe.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/sr_types.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/policer_types.api.json</div>
<div>&nbsp; /usr/share/vpp/api/core/ethernet_types.api.json</div>
<div>&nbsp; /usr/share/vpp/api/plugins/vhost_user.api.json</div>
<div>&nbsp; /usr/share/vpp/api/plugins/lisp_gpe.api.json</div>
<div>&nbsp; /usr/share/vpp/api/plugins/pot.api.json</div>
<div>&nbsp; /usr/share/vpp/api/plugins/dhcp.api.json</div>
<div>&nbsp; /usr/share/vpp/api/plugins/tls_openssl.api.json</div>
<div>&nbsp; /usr/share/vpp/api/plugins/ioam_cache.api.json</div>
<div>&nbsp; /usr/share/vpp/api/plugins/igmp.api.json</div>
<div>&nbsp; /usr/share/vpp/api/plugins/dns.api.json</div>
<div>&nbsp; /usr/lib/vpp_api_test_plugins/vpp_api_test_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_api_test_plugins/lb_test_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_api_test_plugins/adl_test_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_api_test_plugins/memif_test_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_api_test_plugins/vmxnet3_test_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_api_test_plugins/vlib_vlibapi_test_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_api_test_plugins/vnet_arp_test_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_api_test_plugins/tracedump_test_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_api_test_plugins/builtinurl_test_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_api_test_plugins/flowprobe_test_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_api_test_plugins/arping_test_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_api_test_plugins/vrrp_test_plugin.so</div>
<div>&nbsp; /usr/lib/python3.8/site-packages</div>
<div>&nbsp; /usr/lib/python3.8/site-packages/vpp_papi</div>
<div>&nbsp; /usr/lib/python3.8/site-packages/vpp_papi-2.0.0-py3.8.egg-info<=
/div>
<div>&nbsp; /usr/lib/python3.8/site-packages/vpp_papi/vpp_serializer.py</di=
v>
<div>&nbsp; /usr/lib/python3.8/site-packages/vpp_papi/vpp_papi.py</div>
<div>&nbsp; /usr/lib/vpp_plugins/srv6adflow_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_plugins/dma_intel_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_plugins/af_packet_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_plugins/cdp_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_plugins/ip_session_redirect_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_plugins/oddbuf_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_plugins/hsi_plugin.so</div>
<div>&nbsp; /usr/lib/vpp_plugins/pnat_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/pppoe_test_plugin_pppoe_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/vnet_l2_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/npt66_test_plugin_npt66_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/vnet_mpls_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/vnet_feature_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/vnet_ip6_nd_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/vnet_ipsec_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/lb_test_plugin_lb_types_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/cnat_test_plugin_cnat_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/vnet_session_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/gtpu_test_plugin_gtpu_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/vlibmemory_vlib_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/dns_test_plugin_dns_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/lisp_test_plugin_lisp_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/tracedump_test_plugin_tracedump_plugin.so=
</div>
<div>&nbsp; /usr/lib/vat2_plugins/l2tp_test_plugin_l2tp_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/vnet_policer_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/af_packet_test_plugin_af_packet_plugin.so=
</div>
<div>&nbsp; /usr/lib/vat2_plugins/flowprobe_test_plugin_flowprobe_plugin.so=
</div>
<div>&nbsp; /usr/lib/vat2_plugins/http_static_test_plugin_http_static_plugi=
n.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/vnet_pg_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/vnet_fib_types_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/lisp_test_plugin_one_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/vnet_ethernet_types_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/tracenode_test_plugin_tracenode_plugin.so=
</div>
<div>&nbsp; /usr/lib/vat2_plugins/vxlan_test_plugin_vxlan_plugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/dhcp_test_plugin_dhcp6_ia_na_client_cp_pl=
ugin.so</div>
<div>&nbsp; /usr/lib/vat2_plugins/dslite_test_plugin_dslite_plugin.so</div>
<div>Please set FILES such that these items are packaged. Alternatively if =
they are unneeded, avoid installing them or delete them within do_install.<=
/div>
<div>vpp-test: 430 installed and not shipped files. [installed-vs-shipped]<=
/div>
</blockquote>
More packages appear but I have reduced the list.&nbsp;I'm modifying the re=
cipe to solve the problems I'm having.<br /><br />Thank you very much for y=
our help and sorry for the inconvenience.

--QrwvGgeXh3Jvn6xnLRNh--

